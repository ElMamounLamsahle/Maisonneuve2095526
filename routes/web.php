<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\EtudiantController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [EtudiantController::class, 'index'])->name('etudiants');
Route::get('/etudiants/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');
Route::get('/etudiants/create/new', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('/etudiants/create/new', [EtudiantController::class, 'store'])->name('etudiant.store');
Route::get('/etudiants/{etudiant}/edit', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put('/etudiants/{etudiant}/edit', [EtudiantController::class, 'update']);
Route::delete('/etudiants/{etudiant}', [EtudiantController::class, 'destroy']);