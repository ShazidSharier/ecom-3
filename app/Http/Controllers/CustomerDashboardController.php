<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Session;
use App\Models\Order;
use Illuminate\Http\Request;

class CustomerDashboardController extends Controller
{
    public function index()
    {
        return view('website.customer.dashboard');
    }

    public function profile()
    {
        return view('website.customer.profile', ['customer' => Customer::find(Session::get('customerId'))]);
    }

    public function update(Request $request, $id)
    {
        //return $request;
        return $id;
    }

    public function order()
    {
        return view('website.customer.order', [ 'orders' => Order::where('customer_id', Session::get('customerId'))->get() ]);
    }

    public function orderDetail()
    {
        return view('website.customer.detail');
    }
}
