@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_connection'))
@section('heading-btn-display','d-none')
@section('content')
    <div class="signup-form">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="col-md-6 col-xl-4 pt-4">
                    <div class="card">
                        <h2 class="display-5 card-header text-center">@lang('lang.text_heading_connection')</h2>
                        <div class="card-body">
                            <form action="{{ route('login') }}" method="post">
                                @csrf
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control @if ($errors->has('email')) border-danger @endif" id="email" name="email" value="{{ old('email') }}">
                                    <label for="email">@lang('lang.text_email')</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control @if ($errors->has('password')) border-danger @endif" id="password" name="password" value="">
                                    <label for="password">@lang('lang.text_password')</label>
                                </div>
                                @foreach($errors->all() as $error)
                                    <div class="alert alert-danger alert-dismissible fade show mt-2" role="alert">
                                        {{ $error }}
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                @endforeach
                                <div class="row">
                                    <div class="col-sm-12">
                                        <button class="btn btn-primary btn-block">@lang('lang.text_sign_in')</button>
                                    </div>
                                </div>
                                <p class="mb-0 mt-3">@lang('lang.text_alert_no_membre') <a href="{{ route('registration.form') }}">@lang('lang.text_alert_no_membre_suscribe')</a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection