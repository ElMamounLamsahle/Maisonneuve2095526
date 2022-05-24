<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Ville;
use Hash;
use Auth;
use Session;

class AuthController extends Controller
{

    /**
     * Show the form for login.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('auth.login');
    }

    /**
     * Login.
     *
     * @return \Illuminate\Http\Response
    */
    public function login(Request $request){
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);
        $credentials = $request->only('email', 'password');
        if (!Auth::validate($credentials)) {
            return redirect(route('login.form'))->withErrors(trans('auth.failed'));
        }
        $user = Auth::getProvider()->retrieveByCredentials($credentials);
        Auth::login($user, $request->get('remember'));
        return redirect()->intended('/');
    }

    /**
     * Logout.
     *
     * @return \Illuminate\Http\Response
    */
    public function logout(){
        Session::flush();
        Auth::logout();
        return Redirect(route('etudiants'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::select()->orderby('nom')->get();
        return view('auth.registration',
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
        $request->validate(
            array(
                'nom' => 'required|max:255|min:2',
                'date_naissance' => 'required|date:Y-m-d',
                'telephone' => 'required|min:10|max:20',
                'adresse' => 'required|max:100|min:2',
                'ville_id' => 'required|exists:App\Models\Ville,id',
                'email' => 'required|email|unique:users',
                'password' => 'required|confirmed|min:6|max:20',
                'password_confirmation' => 'required|same:password',
            )
        );
        $user = new User;
        $user->fill($request->all());
        $user->password = Hash::make($request->password);
        $user->save();
        return redirect(route('login.form'));
    }

}
