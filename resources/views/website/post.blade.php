@extends('layouts.website.app')
@section('content')
<div class="site-cover site-cover-sm same-height overlay single-page"
    style="background-image: url('{{ $post->image }}');">
    <div class="container">
        <div class="row same-height justify-content-center">
            <div class="col-md-12 col-lg-10">
                <div class="post-entry text-center">
                    <span class="post-category text-white bg-success mb-3">{{ $post->category->name }}</span>
                    <h1 class="mb-4"><a href="javascript:void()">{{ $post->title }}</a></h1>
                    <div class="post-meta align-items-center text-center">
                        <figure class="author-figure mb-0 mr-3 d-inline-block">
                            <img src="@if($post->user->image) {{ $post->user->image }} @else {{ asset('website/images/user.png') }} @endif" alt="Image" class="img-fluid">
                        </figure>
                        <span class="d-inline-block mt-1">By {{ $post->user->name }}</span>
                        <span>&nbsp;-&nbsp; {{ $post->created_at->format('M d, Y') }}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="site-section py-lg">
    <div class="container">
        <div class="row blog-entries element-animate">
            <div class="col-md-12 col-lg-8 main-content">
                <div class="post-content-body">
                    {!! $post->description !!}
                </div>
                <div class="pt-5">
                    <p>
                        Categories: <a href="#">{{ $post->category->name }}</a>
                        @if($post->tags()->count() > 0)
                        Tags:
                            @foreach($post->tags as $tag)
                                <a href="{{ route('website.tag', ['slug' => $tag->slug]) }}">#{{ $tag->name }}</a>,
                            @endforeach
                        @endif
                    </p>
                </div>
                <div class="pt-5">
                    <h3 class="mb-5" id="dsq-count-scr">Comments</h3>
                    <a href="{{ route('website.post', ['slug' => $post->slug]) }}#disqus_thread">Comments</a>
                    <div id="disqus_thread"></div>
                </div>

            </div>

            <!-- END main-content -->

            <div class="col-md-12 col-lg-4 sidebar">
                <div class="sidebar-box search-form-wrap">
                    <form action="#" class="search-form">
                        <div class="form-group">
                            <span class="icon fa fa-search"></span>
                            <input type="text" class="form-control" id="s" placeholder="Type a keyword and hit enter">
                        </div>
                    </form>
                </div>
                <!-- END sidebar-box -->
                <div class="sidebar-box">
                    <div class="bio text-center">
                        <img src="@if($post->user->image) {{ $post->user->image }} @else {{ asset('website/images/user.png') }} @endif" alt="Image Placeholder"
                            class="img-fluid mb-5">
                        <div class="bio-body">
                            <h2>{{ $post->user->name }}</h2>
                            <p class="mb-4">{{ $post->user->description }}</p>
                            <p><a href="{{route('website.about')}}" class="btn btn-primary btn-sm rounded px-4 py-2">Read my bio</a></p>
                        </div>
                    </div>
                </div>
                <!-- END sidebar-box -->
                <div class="sidebar-box">
                    <h3 class="heading">Popular Posts</h3>
                    <div class="post-entry-sidebar">
                        <ul>
                            @foreach($posts as $post)
                            <li>
                                <a href="{{ route('website.post', ['slug' => $post->slug]) }}">
                                    <img src="{{ $post->image }}" alt="Image placeholder"
                                        class="mr-4">
                                    <div class="text">
                                        <h4> {{ $post->title }} </h4>
                                        <div class="post-meta">
                                            <span class="mr-2"> {{ $post->created_at->format('M d, Y')}} </span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <!-- END sidebar-box -->

                <div class="sidebar-box">
                    <h3 class="heading">Categories</h3>
                    <ul class="categories">
                        @foreach($categories as $category)
                        <li><a href="#">{{ $category->name }} <span>(12)</span> </a></li>
                        @endforeach
                    </ul>
                </div>
                <!-- END sidebar-box -->

                <div class="sidebar-box">
                    <h3 class="heading">Tags</h3>
                    <ul class="tags">
                        @foreach($tags as $tag)
                        <li><a href="{{ route('website.tag', ['slug' => $tag->slug]) }}">{{ $tag->name }}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <!-- END sidebar -->

        </div>
    </div>
</section>

<div class="site-section bg-light">
    <div class="container">

        <div class="row mb-5">
            <div class="col-12">
                <h2>More Related Posts</h2>
            </div>
        </div>

        <div class="row align-items-stretch retro-layout">

            <div class="col-md-5 order-md-2">
                @foreach($lastRelatedPost as $post)
                <a href="{{ route('website.post', ['slug' => $post->slug]) }}" class="hentry img-1 h-100 gradient"
                    style="background-image: url('{{ $post->image }}');">
                    <span class="post-category text-white bg-danger">{{ $post->category->name }}</span>
                    <div class="text">
                        <h2>{{ $post->title }}</h2>
                        <span>{{ $post->created_at->format('M d, Y')}}</span>
                    </div>
                </a>
                @endforeach
            </div>

            <div class="col-md-7">
                @foreach($firstRelatedPost as $post)
                <a href="{{ route('website.post', ['slug' => $post->slug]) }}" class="hentry img-2 v-height mb30 gradient"
                    style="background-image: url('{{ $post->image }}');">
                    <span class="post-category text-white bg-success">{{ $post->category->name }}</span>
                    <div class="text text-sm">
                        <h2>{{ $post->title }}</h2>
                        <span>{{ $post->created_at->format('M d, Y')}}</span>
                    </div>
                </a>
                @endforeach

                <div class="two-col d-block d-md-flex justify-content-between">
                    @foreach($firstRelatedPosts2 as $post)
                    <a href="{{ route('website.post', ['slug' => $post->slug]) }}" class="hentry v-height img-2 gradient"
                        style="background-image: url('{{ $post->image }}');">
                        <span class="post-category text-white bg-primary">{{ $post->category->name }}</span>
                        <div class="text text-sm">
                            <h2>{{ $post->title }}</h2>
                            <span>{{ $post->created_at->format('M d, Y')}}</span>
                        </div>
                    </a>
                    @endforeach
                </div>
            </div>
        </div>

    </div>
</div>

<div class="site-section bg-lightx">
    <div class="container">
        <div class="row justify-content-center text-center">
            <div class="col-md-5">
                <div class="subscribe-1 ">
                    <h2>Subscribe to our newsletter</h2>
                    <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit nesciunt error illum a
                        explicabo, ipsam nostrum.</p>
                    <form action="#" class="d-flex">
                        <input type="text" class="form-control" placeholder="Enter your email address">
                        <input type="submit" class="btn btn-primary" value="Subscribe">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection



@push('js')
<div id="disqus_thread"></div>
<script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    /*
    var disqus_config = function () {
    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    */
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://samiul-new.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<script id="dsq-count-scr" src="//samiul-new.disqus.com/count.js" async></script>
@endpush
