<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class AdminCustomerController extends Controller
{
    private static $customer;
    public function index()
    {
        return view('admin.customer.index', ['customers' => Customer::latest()->get()]);
    }

}
