@extends('layouts.app')
@if(Auth::user() && Auth::user()->id == $student->id)
    @section('title','Maisonneuve - ' .trans('lang.text_heading_my_profil'))
    @section('heading-title', trans('lang.text_heading_my_profil'))
@else
    @section('title','Maisonneuve - '.trans('lang.text_heading_student_profil'))
    @section('heading-title', trans('lang.text_heading_student_profil'))
@endif
@section('heading-route',route('etudiants'))
@section('heading-btn-text', trans('lang.text_heading_students_list'))
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
                        <h6 class="mb-0">@lang('lang.text_name')</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->nom }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">@lang('lang.text_address')</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->adresse }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">@lang('lang.text_phone')</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->telephone }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">@lang('lang.text_email')</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->email }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">@lang('lang.text_date_of_birth')</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->date_naissance }}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">@lang('lang.text_city')</h6>
                    </div>
                    <div class="col-sm-9">
                        {{ $student->userHasCity->nom }}
                    </div>
                </div>
                @if(Auth::user() && Auth::user()->id == $student->id)
                    <hr>
                    <div class="row">
                        <div class="col-sm-12">
                            <a class="btn btn-primary" href="{{ route('etudiant.edit', $student->id) }}">@lang('lang.text_update')</a> 
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection