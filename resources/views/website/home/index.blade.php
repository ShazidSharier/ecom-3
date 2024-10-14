@extends('website.master')

@section('body')

    <section class="hero-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12 custom-padding-right">
                    <div class="slider-head">

                        <div class="hero-slider">

                            <div class="single-slider" style="background-image: url({{ asset('/') }}website/assets/images/slide/s1.jpg);">
{{--                                <div class="content">--}}
{{--                                    <h2><span>No restocking fee ($35 savings)</span>--}}
{{--                                        M75 Sport Watch--}}
{{--                                    </h2>--}}
{{--                                    <p>Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut--}}
{{--                                        labore dolore magna aliqua.</p>--}}
{{--                                    <h3><span>Now Only</span> $320.99</h3>--}}
{{--                                    <div class="button">--}}
{{--                                        <a href="" class="btn">Shop Now</a>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
                            </div>
                            <div class="single-slider" style="background-image: url({{ asset('/') }}website/assets/images/slide/s2.jpg);"></div>
                            <div class="single-slider" style="background-image: url({{ asset('/') }}website/assets/images/slide/s3.jpg);"></div>
                            <div class="single-slider" style="background-image: url({{ asset('/') }}website/assets/images/slide/s4.jpg);"></div>
                            <div class="single-slider" style="background-image: url({{ asset('/') }}website/assets/images/slide/s5.jpg);"></div>
                            <div class="single-slider" style="background-image: url({{ asset('/') }}website/assets/images/slide/s6.jpg);"></div>
                        </div>

                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="row">
                        <div class="col-lg-12 col-md-6 col-12 md-custom-padding">
                            <div class="hero-small-banner" style="background-image: url('{{ asset('/') }}website/assets/images/slide/s5.jpg');">
                                <div class="content"></div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-6 col-12">
                            <div class="hero-small-banner style2">
                                <div class="content">
                                    <h2>Weekly Sale!</h2>
                                    <p>Saving up to 50% off all online store items this week.</p>
                                    <div class="button">
{{--                                        <a class="btn" href="">Shop Now</a>--}}
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="trending-product section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2>All Product</h2>
                        <p>There are many variations of products available.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($products as $product)
                    <div class="col-lg-3 col-md-6 col-12">
                    <div class="single-product">
                        <div class="product-image">
                            <img src="{{ asset($product->image) }}" alt="#" style="height: 300px">
{{--                            <div class="button"><a href="" class="btn"><i class="lni lni-cart"></i> Add to Cart</a></div>--}}
                        </div>
                        <div class="product-info">
                            <span class="category">{{ $product->category->name }}</span>
                            <h4 class="title">
                                <a href="{{ route('product.details',['id'=>$product->id,'slug'=>$product->slug]) }}">{{ $product->name }}</a>
                            </h4>

                            <div class="price">
                                <span>tk. {{ $product->selling_price }}</span>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    <section class="shipping-info">
        <div class="container justify-center items-center flex-row">
            <ul>
                <li>
                    <div class="media-icon">
                        <i class="lni lni-support"></i>
                    </div>
                    <div class="media-body">
                        <h5>Support.</h5>
                        <span>Message Or Call.</span>
                    </div>
                </li>

                <li>
                    <div class="media-icon">
                        <i class="lni lni-credit-cards"></i>
                    </div>
                    <div class="media-body">
                        <h5>Online Payment.</h5>
                        <span>Secure Payment Services.</span>
                    </div>
                </li>

                <li>
                    <div class="media-icon">
                        <i class="lni lni-reload"></i>
                    </div>
                    <div class="media-body">
                        <h5>Easy Return.</h5>
                        <span>Enjoy Shopping.</span>
                    </div>
                </li>
            </ul>
        </div>
    </section>

@endsection
