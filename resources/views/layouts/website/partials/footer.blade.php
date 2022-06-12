<div class="site-footer">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-4">
          <h3 class="footer-heading mb-4">About Us</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat reprehenderit magnam deleniti quasi saepe, consequatur atque sequi delectus dolore veritatis obcaecati quae, repellat eveniet omnis, voluptatem in. Soluta, eligendi, architecto.</p>
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
              <a href="#"><span class="icon-facebook pt-2 pr-2 pb-2 pl-0"></span></a>
              <a href="#"><span class="icon-twitter p-2"></span></a>
              <a href="#"><span class="icon-instagram p-2"></span></a>
              <a href="#"><span class="icon-rss p-2"></span></a>
              <a href="#"><span class="icon-envelope p-2"></span></a>
            </p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-12 text-center">
          <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib---</a>Downloaded from <a href="https://themeslab.org/" target="_blank">Themeslab</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
      </div>
    </div>
</div>
