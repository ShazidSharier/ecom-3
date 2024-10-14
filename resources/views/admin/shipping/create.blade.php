@extends('admin.master')
@section('body')
    <div class="main-container container-fluid">
        <div class="page-header">
            <div>
                <h1 class="page-title">Shipping</h1>
            </div>
            <div class="ms-auto pageheader-btn">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Shipping</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Data Tables</li>
                </ol>
            </div>
        </div>
        <div class="row row-sm">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header border-bottom d-flex justify-content-between">
                        <h3 class="card-title">Add Shipping Form</h3>
                        <a href="{{ route('shipping.index') }}" class="btn btn-primary"> All Shipping</a>
                    </div>
                    <div class="card-body">
                        <p class="text-success text-center">{{session('message')}}</p>
                        <form class="form-horizontal" action="{{ route('shipping.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row mb-4">
                                <label  class="col-md-3 form-label">Shipping Name</label>
                                <div class="col-md-9">
                                    <input class="form-control" name="name" placeholder="Enter your Shipping Name" type="text">
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label  class="col-md-3 form-label">Shipping Charge</label>
                                <div class="col-md-9">
                                    <input class="form-control" name="code" placeholder="Enter your Shipping code" type="text">
                                </div>
                            </div>
                            <button class="btn btn-primary" type="submit">Create New Shipping</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

