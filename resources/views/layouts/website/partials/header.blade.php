@php
    $setting = App\Models\Setting::first();
@endphp
<header class="site-navbar" role="banner">
    <div class="container-fluid">
      <div class="row align-items-center">

        <div class="col-12 search-form-wrap js-search-form">
          <form method="get" action="#">
            <input type="text" id="s" class="form-control" placeholder="Search...">
            <button class="search-btn" type="submit"><span class="icon-search"></span></button>
          </form>
        </div>

        <div class="col-4 site-logo">

          <img src="{{ asset($setting->site_logo) }}" style="height: 90px;width: 102px;"  alt="Logo" class="text-black h2 mb-0"
          style="opacity: .8">
        </div>

        <div class="col-8 text-right">
          <nav class="site-navigation" role="navigation">
            <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block mb-0">
              <li><a href="{{route('website.home')}}">Home</a></li>
              <li><a href="{{route('website.about')}}">About Us</a></li>
              <li><a href="{{route('website.contact')}}">Contact</a></li>


              <li class="d-none d-lg-inline-block"><a href="#" class="js-search-toggle"><span class="icon-search"></span></a></li>
            </ul>
          </nav>
          <a href="#" class="site-menu-toggle js-menu-toggle text-black d-inline-block d-lg-none"><span class="icon-menu h3"></span></a></div>
        </div>

    </div>
</header>
