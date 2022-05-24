@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_heading_post'))
@section('heading-title', trans('lang.text_heading_post'))
@section('heading-route', route('articles'))
@section('heading-btn-text', trans('lang.text_heading_posts'))
@section('content')
    <section>
        <div class="row">
            <div class="col-lg-3">
                <div class="d-flex align-items-center mb-4">
                    <img class="img-fluid rounded-circle" src="{{ asset('assets/img/avatar.jpg') }}" alt="..." width="50" />
                    <div class="ms-3">
                        <div class="fw-bold">{{ $post->postHasUser->nom }}</div>
                    </div>
                </div>
                @if(Auth::user() && Auth::user()->id == $post->user_id)
                    <div class="row mb-4">
                        <div class="col-sm-12">
                            <a class="btn btn-primary" href="{{ route('article.edit', $post->id) }}">@lang('lang.text_update')</a>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
                                @lang('lang.text_delete')
                            </button>
                        </div>
                    </div>
                @endif
            </div>
            <div class="col-lg-9">
                <!-- Post content-->
                <article>
                    <!-- Post header-->
                    <header class="mb-4">
                        <!-- Post title-->
                        <h3 class="fw-bolder mb-1">{{ $post->titre }}</h3>
                        <!-- Post meta content-->
                        <div class="text-muted fst-italic mb-2">{{ $post->created_at->format('Y/m/d H:i:s') }}</div>
                    </header>
                    <!-- Preview image figure-->
                    <!-- <figure class="mb-4"><img class="img-fluid rounded" src="https://dummyimage.com/900x400/ced4da/6c757d.jpg" alt="..." width="100%" /></figure> -->
                    <!-- Post content-->
                    <section class="mb-5">
                        <p>{{ $post->contenu }}</p>
                    </section>
                </article>
            </div>
        </div>
    </section>
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">@lang('lang.text_dialog_post_title')</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    @lang('lang.text_dialog_post_body')
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">@lang('lang.text_cancel')</button>
                    <form method="post">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-danger">@lang('lang.text_delete')</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection