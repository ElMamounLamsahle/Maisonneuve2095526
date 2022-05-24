@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_heading_posts'))
@section('heading-title', trans('lang.text_heading_my_posts'))
@section('heading-route', route('article.create'))
@section('heading-btn-text', trans('lang.text_heading_new_post'))
@section('content')
    <section>
        <div class="row gx-5">
            @forelse($posts as $post)
                <div class="col-lg-4 mb-5">
                    <div class="card h-100 shadow border-0">
                        <img class="card-img-top" src="https://dummyimage.com/600x350/ced4da/6c757d" alt="..." />
                        <div class="card-body p-4">
                            <a class="text-decoration-none link-dark stretched-link" href="{{ route('article.show', $post->id) }}"><div class="h5 card-title mb-3">{{ $post->titre }}</div></a>
                            @php
                                $content = $post->contenu;
                                if (strlen($content) > 200) {
                                    $content = substr($content, 0, 200). '...';
                                }
                            @endphp
                            <p class="card-text mb-0">{{ $content }}</p>
                        </div>
                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                            <div class="d-flex align-items-end justify-content-between">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle me-3" src="{{ asset('assets/img/avatar.jpg') }}" alt="..." width="40px"/>
                                    <div class="small">
                                        <div class="fw-bold">{{ $post->postHasUser->nom }}</div>
                                        <div class="text-muted">{{ $post->created_at->format('Y/m/d H:i:s') }}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @empty
                <p class="row alert alert-danger">@lang('lang.text_alert_no_post')<p>
            @endforelse
        </div>
    </section>
@endsection