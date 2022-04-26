<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}">
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
                            <li class="nav-item"><a class="nav-link" href="/">Accueil</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ route('etudiant.create') }}">Nouvel étudiant</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container-fluid p-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="display-5">@yield('heading-title')</h2>
                    <a href="@yield('heading-route')" class="btn btn-success">@yield('heading-btn-text')</a>
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