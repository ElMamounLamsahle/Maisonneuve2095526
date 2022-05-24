@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_heading_students_list'))
@section('heading-title', trans('lang.text_heading_students_list'))
@section('heading-btn-display','d-none')
@section('content')
    @if (!$students)
        <p class="alert alert-danger">@lang('lang.text_alert_no_student')</p>
    @else
        <div class="row g-2">
            @foreach($students as $student)
                <div class="col-xxl-2 col-xl-3 col-md-4">
                    <div class="card p-2 py-3 text-center">
                        <div class="img mb-2"> <img src="{{ asset('assets/img/avatar.jpg') }}" width="70" class="rounded-circle"></div>
                        <h5 class="mb-0">{{ $student->nom }}</h5> <small>{{ $student->userHasCity->nom }}</small>
                        <div class="mt-4"> <a href="{{ route('etudiant.show', $student->id) }}" class="btn btn-primary text-uppercase">Profil</a> </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endif
@endsection