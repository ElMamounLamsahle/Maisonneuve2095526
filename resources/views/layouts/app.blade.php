<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
        <title>@yield('title')</title>
    </head>
    <body class="d-flex flex-column vh-100">
        <main class="flex-shrink-0">
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="container px-5">
                    <a class="navbar-brand" href="/">Maisonneuve</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="/"><i class="bi bi-house-door-fill"></i> @lang('lang.text_home')</a></li>
                            @guest
                                <li class="nav-item"><a class="nav-link" href="{{ route('login.form') }}"><i class="bi bi-box-arrow-in-right"></i> @lang('lang.text_connection')</a></li>
                                <li class="nav-item"><a class="nav-link" href="{{ route('registration.form') }}"><i class="bi bi-person-plus-fill"></i> @lang('lang.text_registration')</a></li>
                            @else
                                <li class="nav-item"><a class="nav-link" href="{{ route('articles') }}"><i class="bi bi-postcard-fill"></i> @lang('lang.text_posts')</a></li>
                                <li class="nav-item"><a class="nav-link" href="{{ route('documents') }}"><i class="bi bi-archive-fill"></i> @lang('lang.text_documents')</a></li>
                                <li class="nav-item py-1 me-2">
                                    <div class="dropdown">
                                        <button class="btn btn-outline dropdown-toggle text-light" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                            <img class="rounded-circle" src="{{ asset('assets/img/avatar.jpg') }}" alt="Admin" width="25px"> {{ Auth::user()->nom }}
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li><a class="dropdown-item" href="{{ route('etudiant.show', Auth::user()->id) }}"><i class="bi bi-person"></i> @lang('lang.text_my_profil')</a></li>
                                            <li><a class="dropdown-item" href="{{ route('articles.my') }}"><i class="bi bi-postcard"></i> @lang('lang.text_my_posts')</a></li>
                                            <li><a class="dropdown-item" href="{{ route('documents.my') }}"><i class="bi bi-archive"></i> @lang('lang.text_my_documents')</a></li>
                                            <li><a class="dropdown-item" href="{{ route('logout') }}"><i class="bi bi-box-arrow-right"></i> @lang('lang.text_logout')</a></li>
                                        </ul>
                                    </div>
                                </li>
                            @endguest
                            @php $locale = session()->get('locale'); @endphp
                            <li class="nav-item">
                                <a class="nav-link @if($locale != 'fr') bg-light text-primary rounded-3 p-1 mt-1 ml-3 @endif" href="{{ route('lang', 'en') }}"><img src="{{ asset('assets/img/flag/en.png') }}" alt="English"> English</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link @if($locale == 'fr') bg-light text-primary rounded-3 p-1 mt-1 @endif" href="{{ route('lang', 'fr') }}"><img src="{{ asset('assets/img/flag/fr.png') }}" alt="Français"> Français</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container-fluid p-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="display-5">@yield('heading-title')</h2>
                    <a href="@yield('heading-route')" class="btn btn-success @yield('heading-btn-display')">@yield('heading-btn-text')</a>
                </div>
                @yield('content')
            </div>
        </main>
        <footer class="bg-primary py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; El Mamoun Lamsahle 2022</div></div>
                    <div class="col-auto">
                        <a class="link-light small" href="">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="">Contact</a>
                    </div>
                </div>
            </div>
        </footer>
        <script src="{{ asset('assets/js/bootstrap.bundle.js') }}"></script>
    </body>
</html>