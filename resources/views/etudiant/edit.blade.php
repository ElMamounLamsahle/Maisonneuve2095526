@extends('layouts.app')
@section('title','Maisonneuve - Mettre à jour un étudiant')
@section('heading-title','Mettre à jour un étudiant')
@section('heading-route',route('etudiants'))
@section('heading-btn-text','Liste des étudiants')
@section('content')
    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-8 col-xl-6">
                <form action="" method="post">
                    @csrf
                    @method('PUT')
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="nom" name="nom" value="{{ $student->nom }}">
                        <label for="nom">Nom</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="adresse" name="adresse" value="{{ $student->adresse }}">
                        <label for="adresse">Adresse</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="phone" name="phone" value="{{ $student->phone }}">
                        <label for="phone">Téléphone</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="email" name="email" value="{{ $student->email }}">
                        <label for="email">Email</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="date" class="form-control" id="date_naissance" name="date_naissance" value="{{ $student->date_naissance }}"
                         min="{{ date('Y') - 65 .'-01-01' }}" max="{{ date('Y') - 17 .'-12-31' }}">
                        <label for="date_naissance">Date de naissance</label>
                    </div>
                    <div class="form-floating mb-3">
                        <select name="ville_id" id="ville" class="form-select">
                            @foreach($villes as $ville)
                                <option value="{{ $ville->id }}" @if($ville->id == $student->ville_id) selected @endif>{{ $ville->nom }}</option>
                            @endforeach
                        </select>
                        <label for="ville">Ville</label>
                    </div>
                    <div class="row">
                    <div class="col-sm-12">
                        <button class="btn btn-primary">Mettre à jour</button>
                        <a class="btn btn-danger " href="{{ route('etudiant.show', $student->id) }}">Annuler</a> 
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
@endsection