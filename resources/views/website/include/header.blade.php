<header class="header navbar-area">
    <div class="topbar">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4 col-md-4 col-12">
                    <div class="top-left">
                        <ul class="menu-top-link">
                            <li>
                            </li>
                            <li>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-12">
                    <div class="top-middle">
                        <ul class="useful-links">
                            <li><a href="{{route('home')}}">Home</a></li>
                            <li><a href="{{route('about-us')}}">About Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-12">
                    @if(Session::get('customerId'))
                    <div class="top-end">
                        <div class="user">
                            <i class="lni lni-user"></i>
                            Hello {{ Session::get('customerName') }}
                        </div>
                        <ul class="user-login">
                            <li><a href="{{route('customer.order')}}">My Order</a></li>
                            <li><a href="{{ route('customer.logout') }}">Sign out</a></li>
                        </ul>
                    </div>
                    @else
                        <div class="top-end">
                            <ul class="user-login">
                                <li>
                                    <a href="{{ route('customer.login') }}">Sign In</a>
                                </li>
                                <li>
                                    <a href="{{ route('customer.register') }}">Register</a>
                                </li>
                            </ul>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="header-middle">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-3 col-7">

                    <a class="navbar-brand" href="{{route('home')}}">
                        <img src="{{ asset('/') }}website/assets/images/logo/logo.png" alt="Logo">
                    </a>

                </div>
                <div class="col-lg-5 col-md-7 d-xs-none">

                    <div class="main-menu-search">

                        <div class="navbar-search search-style-5">
{{--                            <div class="search-select">--}}
{{--                                <div class="select-position">--}}
{{--                                    <select id="select">--}}
{{--                                        <a href="{{route('home')}}"><option selected>All</option></a>--}}
{{--                                        @foreach($categories as $category)--}}
{{--                                            <option value="{{$category->id}}"> {{$category->name}} </option>--}}
{{--                                        @endforeach--}}
{{--                                    </select>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="search-input"><input type="text" placeholder="Search"></div>--}}
{{--                            <div class="search-btn"><button><i class="lni lni-search-alt"></i></button></div>--}}
                        </div>

                    </div>

                </div>
                <div class="col-lg-4 col-md-2 col-5">
                    <div class="middle-right-area">
                        <div class="nav-hotline">
                            <i class="lni lni-phone"></i>
                            <h3>Hotline:
                                <span>(+880) 1722-417195</span>
                            </h3>
                        </div>
                        <div class="navbar-cart">
{{--                            <div class="wishlist">--}}
{{--                                <a href="javascript:void(0)">--}}
{{--                                    <i class="lni lni-heart"></i>--}}
{{--                                    <span class="total-items">0</span>--}}
{{--                                </a>--}}
{{--                            </div>--}}
                            <div class="cart-items">
                                <a href="javascript:void(0)" class="main-btn">
                                    <i class="lni lni-cart"></i>
                                    <span class="total-items">{{count(Cart::content())}}</span>
                                </a>

                                <div class="shopping-item">
                                    <div class="dropdown-cart-header">
                                        <span>{{count(Cart::content())}} Items</span>
                                        <a href="{{route('cart.index')}}">View Cart</a>
                                    </div>
                                    <ul class="shopping-list">
                                        @php($sum=0)
                                        @foreach(Cart::content() as $item)
                                        <li>
{{--                                            <a href="javascript:void(0)" class="remove" title="Remove this item"><i class="lni lni-close"></i></a>--}}
                                            <div class="cart-img-head">
                                                <a class="cart-img" href=""><img src="{{ asset($item->options->image) }}" alt="#"></a>
                                            </div>
                                            <div class="content">
                                                <h4><a href="">{{$item->name}}</a></h4>
                                                <p class="quantity">{{$item->price}} x {{$item->qty}} - <span class="amount"> {{$item->price * $item->qty}} </span></p>
                                            </div>
                                        </li>
                                            @php($sum = $sum + ($item->price * $item->qty) )
                                        @endforeach
                                    </ul>
                                    <div class="bottom">
                                        <div class="total">
                                            <span>Total</span>
                                            <span class="total-amount">Tk. {{$sum}}</span>
                                        </div>
                                        <div class="button">
                                            <a href="{{route('checkout')}}" class="btn animate">Checkout</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-sm-4 col-md-6 col-lg-8 col-12">
                <div class="nav-inner">
                    <div class="mega-category-menu">
                        <span class="cat-button"><i class="lni lni-menu"></i>All Categories</span>
                        <ul class="sub-category">
                            @foreach($categories as $category)
                            <li>
                                <a href="{{ route('shop', ['id' => $category->id]) }}">{{$category->name}}
                                    @if(count($category->subCategory) > 0)
                                    <i class="lni lni-chevron-right"></i>
                                    @endif
                                </a>
                                @if(count($category->subCategory) > 0)
                                <ul class="inner-sub-category">
                                    @foreach($category->subCategory as $subCategory)
                                    <li><a href="{{route('sub-category-shop', ['id' => $subCategory->id])}}">{{$subCategory->name}}</a></li>
                                    @endforeach
                                </ul>
                                @endif
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <nav class="navbar navbar-expand-lg">
                        <!--<button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">-->
                        <!--    <span class="toggler-icon"></span>-->
                        <!--    <span class="toggler-icon"></span>-->
                        <!--    <span class="toggler-icon"></span>-->
                        <!--</button>-->
                        <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                            <ul id="nav" class="navbar-nav flex justify-content-center">

                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-12">
                <div class="nav-social">
                    <h5 class="title">Follow Us:</h5>
                    <ul>
                        <li>
                            <a href="javascript:void(0)"><i class="lni lni-facebook-filled"></i></a>
                        </li>
{{--                        <li>--}}
{{--                            <a href="javascript:void(0)"><i class="lni lni-twitter-original"></i></a>--}}
{{--                        </li>--}}
                        <li>
                            <a href="javascript:void(0)"><i class="lni lni-instagram"></i></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><i class="lni lni-whatsapp"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>



