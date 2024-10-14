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
                        <h3 class="card-title">All Shipping Info</h3>
                        <a href="{{ route('shipping.create') }}" class="btn btn-primary">Add Shipping</a>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <p class="text-success text-center">{{session('message')}}</p>
                            <table class="table table-bordered text-nowrap border-bottom" id="basic-datatable">
                                <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Shipping</th>
                                    <th>Charge</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($shippings as $shipping)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>{{$shipping->name}}</td>
                                        <td>{{$shipping->code}}</td>
                                        <td class="d-flex">
                                            <a href="{{route('shipping.edit', $shipping->id)}}" class="btn btn-primary me-2">Edit</a>
                                            <form action="{{route('shipping.destroy', $shipping->id)}}" method="post">
                                                @method('DELETE')
                                                @csrf
                                                <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure to delete this..');">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


