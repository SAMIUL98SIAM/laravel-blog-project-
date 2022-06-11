<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700|Playfair+Display:400,700,900" rel="stylesheet">

    <link rel="stylesheet" href="{{asset('website')}}/fonts/icomoon/style.css">
    <link rel="stylesheet" href="{{asset('website')}}/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('website')}}/css/magnific-popup.css">
    <link rel="stylesheet" href="{{asset('website')}}/css/jquery-ui.css">
    <link rel="stylesheet" href="{{asset('website')}}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{{asset('website')}}/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="{{asset('website')}}/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="{{asset('website')}}/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="{{asset('website')}}/css/aos.css">

    <link rel="stylesheet" href="{{asset('website')}}/css/style.css">

    @stack('css')
</head>
<body>
    <div class="site-wrap">
        <div class="site-mobile-menu">
          <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
              <span class="icon-close2 js-menu-toggle"></span>
            </div>
          </div>
          <div class="site-mobile-menu-body"></div>
        </div>
        @include('layouts.website.partials.header')


        @yield('content')


        @include('layouts.website.partials.footer')
    </div>
    <script src="{{asset('website')}}/js/jquery-3.3.1.min.js"></script>
    <script src="{{asset('website')}}/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="{{asset('website')}}/js/jquery-ui.js"></script>
    <script src="{{asset('website')}}/js/popper.min.js"></script>
    <script src="{{asset('website')}}/js/bootstrap.min.js"></script>
    <script src="{{asset('website')}}/js/owl.carousel.min.js"></script>
    <script src="{{asset('website')}}/js/jquery.stellar.min.js"></script>
    <script src="{{asset('website')}}/js/jquery.countdown.min.js"></script>
    <script src="{{asset('website')}}/js/jquery.magnific-popup.min.js"></script>
    <script src="{{asset('website')}}/js/bootstrap-datepicker.min.js"></script>
    <script src="{{asset('website')}}/js/aos.js"></script>

    <script src="{{asset('website')}}/js/main.js"></script>
    </body>
</html>
