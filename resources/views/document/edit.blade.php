@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_heading_update_my_document'))
@section('heading-title', trans('lang.text_heading_update_my_document'))
@section('heading-route',route('documents'))
@section('heading-btn-text', trans('lang.text_heading_documents'))
@section('content')
    <div class="p-3">
        <div class="row">
                <form method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#english" type="button" role="tab" aria-controls="english" aria-selected="true">@lang('lang.text_tab_en')</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#french" type="button" role="tab" aria-controls="french" aria-selected="false">@lang('lang.text_tab_fr')</button>
                            </li>
                        </ul>
                        <div class="tab-content border border-top-0 border-bottom-0" id="myTabContent">
                            <div class="tab-pane fade show active" id="english" role="tabpanel" aria-labelledby="english-tab">
                                <div class="my-3">
                                    <label for="titre_en" class="form-label">@lang('lang.text_title_en')</label>
                                    <input type="text" class="form-control @if ($errors->has('titre_en')) border-danger @endif" id="titre_en" name="titre_en" value="{{ $document->titre_en }}">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="french" role="tabpanel" aria-labelledby="french-tab">
                                <div class="my-3">
                                    <label for="titre_fr" class="form-label">@lang('lang.text_title_fr')</label>
                                    <input type="text" class="form-control @if ($errors->has('titre_fr')) border-danger @endif" id="titre_fr" name="titre_fr" value="{{ $document->titre_fr }}">
                                </div>
                            </div>
                        </div>
                        <div class="border border-top-0 pb-3">
                            <label for="fichier" class="form-label">@lang('lang.text_file')</label>
                            <input type="file" class="form-control @if ($errors->has('fichier')) border-danger @endif" id="fichier" name="fichier">
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
                            <button id="btn-submit" class="btn btn-primary">@lang('lang.text_update')</button>
                            <a class="btn btn-danger " href="{{ route('documents') }}">@lang('lang.text_cancel')</a> 
                        </div>
                    </div>
                </form>
        </div>
    </div>
@endsection