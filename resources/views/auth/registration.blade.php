@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_registration'))
@section('heading-btn-display','d-none')
@section('content')
    <div class="signup-form">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-xl-6 pt-4">
                    <div class="card">
                        <h2 class="display-5 card-header text-center">@lang('lang.text_heading_registration')</h2>
                        <div class="card-body">
                            <form action="{{ route('registration') }}" method="post">
                                @csrf
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control @if ($errors->has('nom')) border-danger @endif" id="nom" name="nom" value="{{ old('nom') }}">
                                    <label for="nom">@lang('lang.text_name')</label>
                                    @if ($errors->has('nom'))
                                        <span class="text-danger">{{ $errors->first('nom') }}</span>
                                    @endif
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="date" class="form-control @if ($errors->has('date_naissance')) border-danger @endif" id="date_naissance" name="date_naissance" value="{{ old('date_naissance') }}"
                                        min="{{ date('Y') - 65 .'-01-01' }}" max="{{ date('Y') - 17 .'-12-31' }}">
                                    <label for="date_naissance">@lang('lang.text_date_of_birth')</label>
                                    @if ($errors->has('date_naissance'))
                                        <span class="text-danger">{{ $errors->first('date_naissance') }}</span>
                                    @endif
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control @if ($errors->has('telephone')) border-danger @endif" id="telephone" name="telephone" value="{{ old('telephone') }}">
                                    <label for="telephone">@lang('lang.text_phone')</label>
                                    @if ($errors->has('telephone'))
                                        <span class="text-danger">{{ $errors->first('telephone') }}</span>
                                    @endif
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control @if ($errors->has('adresse')) border-danger @endif" id="adresse" name="adresse" value="{{ old('adresse') }}">
                                    <label for="adresse">@lang('lang.text_address')</label>
                                    @if ($errors->has('adresse'))
                                        <span class="text-danger">{{ $errors->first('adresse') }}</span>
                                    @endif
                                </div>
                                <div class="form-floating mb-3">
                                    <select name="ville_id" id="ville_id" class="form-select @if ($errors->has('ville_id')) border-danger @endif">
                                        <option value=""></option>
                                        @foreach($villes as $ville)
                                            @if (old('ville_id') && old('ville_id') == $ville->id)
                                                <option value="{{ $ville->id }}" selected>{{ $ville->nom }}</option>
                                            @else
                                                <option value="{{ $ville->id }}">{{ $ville->nom }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                    <label for="ville_id">@lang('lang.text_city')</label>
                                    @if ($errors->has('ville_id'))
                                        <span class="text-danger">{{ $errors->first('ville_id') }}</span>
                                    @endif
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control @if ($errors->has('email')) border-danger @endif" id="email" name="email" value="{{ old('email') }}">
                                    <label for="email">@lang('lang.text_email')</label>
                                    @if ($errors->has('email'))
                                        <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control @if ($errors->has('password')) border-danger @endif" id="password" name="password" value="">
                                    <label for="password">@lang('lang.text_password')</label>
                                    @if ($errors->has('password'))
                                        <span class="text-danger">{{ $errors->first('password') }}</span>
                                    @endif
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control @if ($errors->has('password_confirmation')) border-danger @endif" id="password_confirmation" name="password_confirmation" value="">
                                    <label for="password_confirmation">@lang('lang.text_password_confirmation')</label>
                                    @if ($errors->has('password_confirmation'))
                                        <span class="text-danger">{{ $errors->first('password_confirmation') }}</span>
                                    @endif
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 text-center">
                                        <button class="btn btn-primary">@lang('lang.text_sign_up')</button>
                                        <a class="btn btn-danger " href="{{ route('login.form') }}">@lang('lang.text_cancel')</a> 
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection