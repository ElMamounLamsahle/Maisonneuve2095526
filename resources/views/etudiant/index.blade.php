@extends('layouts.app')
@section('title','Maisonneuve - Liste des étudiants')
@section('heading-title','Liste des étudiants')
@section('heading-route',route('etudiant.create'))
@section('heading-btn-text','Nouvel étudiant')
@section('content')
    @if (!$students)
        <p class="text-danger">Aucun étudiant n'est inscris</p>
    @else
        <div class="row g-2">
            @foreach($students as $student)
                <div class="col-xxl-2 col-xl-3 col-md-4">
                    <div class="card p-2 py-3 text-center">
                        <div class="img mb-2"> <img src="{{ asset('assets/img/avatar.jpg') }}" width="70" class="rounded-circle"></div>
                        <h5 class="mb-0">{{ $student->nom }}</h5> <small>{{ $student->studentHasCity->nom }}</small>
                        <div class="mt-4"> <a href="{{ route('etudiant.show', $student->id) }}" class="btn btn-primary text-uppercase">Profil</a> </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endif
@endsection