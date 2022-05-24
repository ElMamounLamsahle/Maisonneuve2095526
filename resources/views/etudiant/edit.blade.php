@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_heading_update_my_profil'))
@section('heading-title', trans('lang.text_heading_update_my_profil'))
@section('heading-route', route('etudiants'))
@section('heading-btn-text', trans('lang.text_heading_students_list'))
@section('content')
    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-8 col-xl-6">
                <form action="" method="post">
                    @csrf
                    @method('PUT')
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control @if ($errors->has('nom')) border-danger @endif" id="nom" name="nom" value="{{ $student->nom }}">
                        <label for="nom">@lang('lang.text_name')</label>
                        @if ($errors->has('nom'))
                            <span class="text-danger">{{ $errors->first('nom') }}</span>
                        @endif
                    </div>
                    <div class="form-floating mb-3">
                        <input type="date" class="form-control @if ($errors->has('date_naissance')) border-danger @endif" id="date_naissance" name="date_naissance" value="{{ $student->date_naissance }}"
                         min="{{ date('Y') - 65 .'-01-01' }}" max="{{ date('Y') - 17 .'-12-31' }}">
                        <label for="date_naissance">@lang('lang.text_date_of_birth')</label>
                        @if ($errors->has('date_naissance'))
                            <span class="text-danger">{{ $errors->first('date_naissance') }}</span>
                        @endif
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control @if ($errors->has('telephone')) border-danger @endif" id="telphone" name="telephone" value="{{ $student->telephone }}">
                        <label for="telephone">@lang('lang.text_phone')</label>
                        @if ($errors->has('telephone'))
                            <span class="text-danger">{{ $errors->first('telephone') }}</span>
                        @endif
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control @if ($errors->has('adresse')) border-danger @endif" id="adresse" name="adresse" value="{{ $student->adresse }}">
                        <label for="adresse">@lang('lang.text_address')</label>
                        @if ($errors->has('adresse'))
                            <span class="text-danger">{{ $errors->first('adresse') }}</span>
                        @endif
                    </div>
                    <div class="form-floating mb-3">
                        <select name="ville_id" id="ville" class="form-select @if ($errors->has('ville->id')) border-danger @endif">
                            @foreach($villes as $ville)
                                <option value="{{ $ville->id }}" @if($ville->id == $student->ville_id) selected @endif>{{ $ville->nom }}</option>
                            @endforeach
                        </select>
                        <label for="ville">@lang('lang.text_city')</label>
                        @if ($errors->has('ville_id'))
                            <span class="text-danger">{{ $errors->first('ville_id') }}</span>
                        @endif
                    </div>
                    <div class="form-floating mb-3">
                        <input disabled type="text" class="form-control" id="email" name="email" value="{{ $student->email }}">
                        <label for="email">@lang('lang.text_email')</label>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <button id="btn-submit" class="btn btn-primary">@lang('lang.text_update')</button>
                            <a class="btn btn-danger " href="{{ route('etudiant.show', $student->id) }}">@lang('lang.text_cancel')</a> 
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection