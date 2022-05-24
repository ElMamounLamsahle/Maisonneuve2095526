<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Ville;
use Auth;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Pour ne pas afficher l'ustilsateur
        // dans la liste des étudiants
        // lorsqu'il est connecté
        if (Auth::user()) {
            $students = User::select()->where('id' ,'!=' , Auth::user()->id)->orderby('nom')->get();
        }
        else {
            $students = User::select()->orderby('nom')->get();
        }
        return view('etudiant.index',
            array(
                'students' => $students
            )
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(User $etudiant)
    {
        $students = User::select()->where('users.id', $etudiant->id)->get();
        return view('etudiant.show',
            array(
                'student' => $students[0]
            )
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(User $etudiant)
    {
        $villes = Ville::select()->orderby('nom')->get();
        return view('etudiant.edit',
            array(
                'student' => $etudiant,
                'villes' => $villes
            )
        );
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $etudiant)
    {
        $request->validate(
            array(
                'nom' => 'required|max:255|min:2',
                'date_naissance' => 'required|date:Y-m-d',
                'telephone' => 'required|min:10|max:20',
                'adresse' => 'required|max:100|min:2',
                'ville_id' => 'required|exists:App\Models\Ville,id',
            )
        );
        $etudiant->update(
            array(
                'nom' => $request->nom,
                'date_naissance' => $request->date_naissance,
                'phone' => $request->phone,
                'adresse' => $request->adresse,
                'ville_id' => $request->ville_id
            )
        );
        return redirect(route('etudiant.show',$etudiant->id));
    }
}
