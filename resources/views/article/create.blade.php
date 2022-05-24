@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_heading_new_post'))
@section('heading-title', trans('lang.text_heading_new_post'))
@section('heading-route', route('articles'))
@section('heading-btn-text', trans('lang.text_heading_posts'))
@section('content')
    <div class="p-3">
        <div class="row">
                <form method="POST">
                    @csrf
                    <div class="row">   
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#english" type="button" role="tab" aria-controls="english" aria-selected="true">@lang('lang.text_tab_en')</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#french" type="button" role="tab" aria-controls="french" aria-selected="false">@lang('lang.text_tab_fr')</button>
                            </li>
                        </ul>
                        <div class="tab-content border border-top-0" id="myTabContent">
                            <div class="tab-pane fade show active" id="english" role="tabpanel" aria-labelledby="english-tab">
                                <div class="my-3">
                                    <label for="titre_en" class="form-label">@lang('lang.text_title_en')</label>
                                    <input type="text" class="form-control @if ($errors->has('titre_en')) border-danger @endif" id="titre_en" name="titre_en">
                                </div>
                                <div class="mb-3">
                                    <label for="contenu_en" class="form-label">@lang('lang.text_content_en')</label>
                                    <textarea class="form-control @if ($errors->has('contenu_en')) border-danger @endif" id="contenu_en" name="contenu_en" rows="6"></textarea>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="french" role="tabpanel" aria-labelledby="french-tab">
                                <div class="my-3">
                                    <label for="titre_fr" class="form-label">@lang('lang.text_title_fr')</label>
                                    <input type="text" class="form-control @if ($errors->has('titre_fr')) border-danger @endif" id="titre_fr" name="titre_fr">
                                </div>
                                <div class="mb-3">
                                    <label for="contenu_fr" class="form-label">@lang('lang.text_content_fr')</label>
                                    <textarea class="form-control @if ($errors->has('contenu_fr')) border-danger @endif" id="contenu_en" name="contenu_fr" rows="6"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    @if(count($errors) > 0)
                        <div class="row alert alert-danger mt-3 pb-0 mb-0">
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="row">
                        <div class="control-group col-12 mt-3 p-0">
                            <button id="btn-submit" class="btn btn-primary">@lang('lang.text_create')</button>
                            <a class="btn btn-danger " href="{{ route('articles') }}">@lang('lang.text_cancel')</a> 
                        </div>
                    </div>
                </form>
        </div>
    </div>
@endsection