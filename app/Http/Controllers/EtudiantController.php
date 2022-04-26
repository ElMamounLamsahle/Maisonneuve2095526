<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Http\Request;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students = Etudiant::select()->orderby('nom')->get();
        return view('etudiant.index',
            array(
                'students' => $students
            )
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::select()->orderby('nom')->get();
        return view('etudiant.create',
            array(
                'villes' => $villes
            )
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $newStudent = new Etudiant;
        $newStudent->fill($request->all());
        $newStudent->save();
        return redirect('etudiants/'. $newStudent->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        $students = Etudiant::select()->where('etudiants.id', $etudiant->id)->get();
        return view('etudiant.show',
            array(
                'student' => $students[0]
            )
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
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
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $etudiant->update(
            array(
                'nom' => $request->nom,
                'adresse' => $request->adresse,
                'phone' => $request->phone,
                'email' => $request->email,
                'date_naissance' => $request->date_naissance,
                'ville_id' => $request->ville_id
            )
        );
        return redirect(route('etudiant.show',$etudiant->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();
        return redirect(route('etudiants'));
    }
}
