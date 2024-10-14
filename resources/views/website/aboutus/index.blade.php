@extends('website.master')
@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">About Us</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="{{route('home')}}"><i class="lni lni-home"></i> Home</a></li>
                        <li>About Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section class="about-us section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left">
                        <img src="{{asset('/')}}website/assets/images/about/about-img.jpg" alt="#">
                        <a href="https://www.youtube.com/watch?v=r44RKWyfcFw&amp;fbclid=IwAR21beSJORalzmzokxDRcGfkZA1AtRTE__l5N4r09HcGS5Y6vOluyouM9EM" class="glightbox video"><i class="lni lni-play"></i></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-12">

                    <div class="content-right">
                        <h2>WHY CHOOSE US? </h2>
                        <p>Parmpara the rendezvous for specific shopping needs of beautiful women. For those of you who believe that not diamonds,
                            but clothes are a women's best friend, here is an exclusive range to indulge in.The traditional dressing has always been
                            an icon of grandeur all over the world and to carry forward the trends, we offer attractive trendy colors, designs, embroideries
                            and fabrics exactly matching up your personality. We cater to your fashion tastes on every occasion, religious festival, birthday,
                            and wedding or kitty parties. We manufacture, import, wholesale and retail.
                        </p>
                        <p>We have started its journey in 1990 With beautiful designs of Indian sharee, kamiz and bridal collections.
                            With time we included bridal dupatta for our customers. We introduce different types of traditional and designer
                            dresses, sharee kurtis stitched unstitched semi stitched dress gown and three plece dress set. Parmpara sharee has become a
                            household name for its quality and prices among the people over the country. The Indain shareess for daily to occasion wear
                            Parmpara sharee provides all. WE introduced Pakistani Lawn for daily use of women in cheap rates bothe in retail and wholesale prices.
                            Our designed jewellery collection from Surat of India Made a great place in our customers hearts. These includes necklace set earrings
                            bracelet bangles broneze rings e.t.c. For every need of any occasion customers trusted only one name Parmpara saree. We also provide tailoring
                            and fittings services for our customers. Readymade gorgeous blouses semi stitched dress gown are available here. The customers can easily get
                            their fittings done by us. Our tailoring time are ever ready at their service.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
