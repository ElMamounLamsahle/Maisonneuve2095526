<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\LocalizationController;
use \App\Http\Controllers\AuthController;
use \App\Http\Controllers\EtudiantController;
use \App\Http\Controllers\ArticleController;
use \App\Http\Controllers\DocumentController;

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

Route::get('/lang/{locale}', [LocalizationController::class, 'index'])->name('lang');

Route::get('/login-form', [AuthController::class, 'index'])->name('login.form');
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::get('/registration-form', [AuthController::class, 'create'])->name('registration.form');
Route::post('/registration', [AuthController::class, 'store'])->name('registration');
Route::get('/logout', [AuthController::class, 'logout'])->name('logout')->middleware('auth');;

Route::get('/', [EtudiantController::class, 'index'])->name('etudiants');
Route::get('/etudiants/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');
Route::get('/etudiants/{etudiant}/edit', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put('/etudiants/{etudiant}/edit', [EtudiantController::class, 'update']);

Route::get('/articles', [ArticleController::class, 'index'])->name('articles')->middleware('auth');
Route::get('/mes-articles', [ArticleController::class, 'my_posts'])->name('articles.my')->middleware('auth');
Route::get('/articles/new', [ArticleController::class, 'create'])->name('article.create')->middleware('auth');
Route::post('/articles/new', [ArticleController::class, 'store'])->middleware('auth');
Route::get('/articles/{article}', [ArticleController::class, 'show'])->name('article.show')->middleware('auth');
Route::get('/articles/{article}/edit', [ArticleController::class, 'edit'])->name('article.edit')->middleware('auth');
Route::put('/articles/{article}/edit', [ArticleController::class, 'update'])->middleware('auth');
Route::delete('/articles/{article}', [ArticleController::class, 'destroy'])->middleware('auth');

Route::get('/documents', [DocumentController::class, 'index'])->name('documents')->middleware('auth');
Route::get('/mes-documents', [DocumentController::class, 'my_documents'])->name('documents.my')->middleware('auth');
Route::get('/documents/new', [DocumentController::class, 'create'])->name('document.create')->middleware('auth');
Route::post('/documents/new', [DocumentController::class, 'store'])->middleware('auth');
Route::get('/documents/{document}/download', [DocumentController::class, 'download'])->name('document.download')->middleware('auth');
Route::get('/documents/{document}', [DocumentController::class, 'show'])->name('document.show')->middleware('auth');
Route::get('/documents/{document}/edit', [DocumentController::class, 'edit'])->name('document.edit')->middleware('auth');
Route::put('/documents/{document}/edit', [DocumentController::class, 'update'])->middleware('auth');
Route::delete('/documents/{document}', [DocumentController::class, 'destroy'])->name('document.delete')->middleware('auth');