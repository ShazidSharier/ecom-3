@extends('admin.master')
@section('body')
    <!--app-content open-->
    <!-- CONTAINER -->
    @if($errors->any())
        @foreach($errors->all() as $error)
            <div class="alert alert-danger" role="alert">
                {{$error}}
            </div>
        @endforeach
    @endif
    <div class="main-container container-fluid">
        <!-- PAGE-HEADER -->
        <div class="page-header">
            <div>
                <h1 class="page-title">User Module</h1>
            </div>
            <div class="ms-auto pageheader-btn">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0);">User</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Add New User</li>
                </ol>
            </div>
        </div>
        <!-- PAGE-HEADER END -->

        <!-- Row -->
        <div class="row row-sm">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header border-bottom d-flex justify-content-between">
                        <h3 class="card-title">Add New User</h3>
                        <a href="{{ route('user.index') }}" class="btn btn-primary">All User</a>
                    </div>
                    <div class="card-body">
                        <p class="text-success text-center">{{session('message')}}</p>
                        <form class="form-horizontal" action="{{ route('user.update', $user->id) }}" method="post" enctype="multipart/form-data">
                            @method('PUT')
                            @csrf
                            <div class="row mb-4">
                                <label  class="col-md-3 form-label">User Name</label>
                                <div class="col-md-9">
                                    <input class="form-control" value="{{$user->name}}" name="name" placeholder="User Name" type="text">
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label  class="col-md-3 form-label">User Email</label>
                                <div class="col-md-9">
                                    <input class="form-control" onblur="checkUserEmail(this.value)" value="{{$user->email}}" name="email" placeholder="User Email" type="email">
                                    <span class="text-danger" id="emailError">{{$errors->has('email') ? $errors->first('email') : ''}}</span>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label  class="col-md-3 form-label">User Password</label>
                                <div class="col-md-9">
                                    <input class="form-control" value="{{$user->password}}" name="password" placeholder="User Password" type="password">
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label  class="col-md-3 form-label">User Image</label>
                                <div class="col-md-9">
                                    <input class="form-control" name="image" type="file">
                                    <img src="{{asset($user->image)}}" alt="" height="100"/>
                                </div>
                            </div>
                            <button class="btn btn-primary" type="submit">Update User Info</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Row -->
    </div>
    <!-- CONTAINER CLOSED -->
@endsection
