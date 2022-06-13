@php
    $setting = App\Models\Setting::first();
@endphp
<div class="site-footer">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-4">
          <h3 class="footer-heading mb-4">About Us</h3>
          <p>{{ $setting->description }} </p>
        </div>
        <div class="col-md-3 ml-auto">
          <!-- <h3 class="footer-heading mb-4">Navigation</h3> -->
          <ul class="list-unstyled float-left mr-5">
            <li><a href="{{ route('website.home') }}">Home</a></li>
            <li><a href="{{ route('website.about') }}">About Us</a></li>
            <li><a href="{{ route('website.contact') }}">Contact US</a></li>
          </ul>
          <ul class="list-unstyled float-left">
            @foreach(App\Models\Category::latest()->get() as $category)
              <li><a href="{{ route('website.category', ['slug' => $category->slug]) }}">{{ $category->name }}</a></li>
            @endforeach
          </ul>
        </div>
        <div class="col-md-4">
          <div>
            <h3 class="footer-heading mb-4">Connect With Us</h3>
            <p>
              @if($setting->facebook)<a target="_blank" href="{{ $setting->facebook }}"><span class="icon-facebook pt-2 pr-2 pb-2 pl-0"></span></a> @endif
              @if($setting->twitter)<a target="_blank" href="{{ $setting->twitter }}"><span class="icon-twitter p-2"></span></a> @endif
              @if($setting->instagram)<a target="_blank" href="{{ $setting->instagram }}"><span class="icon-instagram p-2"></span></a> @endif
              @if($setting->reddit)<a target="_blank" href="{{ $setting->reddit }}"><span class="icon-rss p-2"></span></a> @endif
              @if($setting->email)<a target="_blank" href="{{ $setting->email }}"><span class="icon-envelope p-2"></span></a> @endif
            </p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-12 text-center">
          <p>
            {{ $setting->copyright }} | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <div class="mb-0">Developed By Zakir on <a href="https://www.youtube.com/playlist?list=PLl4v4A2HI0YixTm5AsoTu-sKxiQti4-r6">Laravel Blog Development </a>Tutorial Series</div>
            </p>
        </div>
      </div>
    </div>
</div>
