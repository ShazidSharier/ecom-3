@extends('website.master')
@section('body')

    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Login</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="{{route('home')}}"><i class="lni lni-home"></i> Home</a></li>
                        <li>Login</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="account-login section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-10 offset-md-1 col-12">
                    <form class="card login-form" method="post" action="{{ route('customer.login') }}">
                        @csrf
                        <div class="card-body">
                            <div class="title">
                                <h3>Login Now</h3>
                                <p class="text-danger">{{ session('message') }}</p>
                            </div>
                            <div class="form-group input-group">
                                <label for="reg-fn">Email or Phone</label>
                                <input class="form-control" name="user_name" type="text" id="reg-email" required>
                            </div>
                            <div class="form-group input-group">
                                <label for="reg-fn">Password</label>
                                <input class="form-control" name="password" type="password" id="reg-pass" required>
                            </div>
                            <div class="button">
                                <button class="btn" type="submit">Login</button>
                            </div>
                            <p class="outer-link">Don't have an account? <a href="{{route('customer.register')}}">Register here </a>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


@endsection
