@extends('layouts.app')
@section('title','Maisonneuve - Profil étudiant')
@section('heading-title','Profil étudiant')
@section('heading-route',route('etudiants'))
@section('heading-btn-text','Liste des étudiants')
@section('content')
    <div class="row gutters-sm">
        <div class="col-md-3 mb-3">
            <div class="card border-0">
                <div class="card-body">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="{{ asset('assets/img/avatar.jpg') }}" alt="Admin" class="rounded-circle" width="150">
                        <div class="mt-3">
                            <h4>{{ $student->nom }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Nom</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->nom }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Adresse</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->adresse }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Téléphone</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->phone }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->email }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Date de naissance</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->date_naissance }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Ville</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->studentHasCity->nom }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-12">
                        <a class="btn btn-primary" href="{{ route('etudiant.edit', $student->id) }}">Mettre à jour</a>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
                            Supprimer
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Supprimer un étudiant</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Voulez vous vraiment supprimer cet étudiant ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                    <form method="post">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-danger">Supprimer</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection