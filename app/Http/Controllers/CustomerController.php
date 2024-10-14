<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Session;
use Cart;
use function PHPUnit\Framework\countOf;

class CustomerController extends Controller
{

    private $customer;

    public function register(){
        return view('website.customer.register');
    }
    public function checkCustomerEmail()
    {
        $customer= Customer::where('email', $_GET['email'])->first();
        if($customer)
        {
            return response()->json([
                'email_status' => 1,
                'message'      => "Email address already exist",
            ]);
        }
        else {
            return response()->json([
                'email_status' => 0,
                'message'      => "Email address Avaliable",
            ]);
        }
    }

    public function login(){
        return view('website.customer.login');
    }

    public function saveNewCustomer(Request $request)
    {
        $request->validate([
            'email' => 'required|unique:customers',
        ]);

        $this->customer = Customer::saveCustomer($request);

        Session::put('customerId', $this->customer->id);
        Session::put('customerName', $this->customer->name);

        if(Session::get('checkout'))
        {
            return redirect('/checkout');
        }
        return redirect('/');
    }

    public function loginCheck(Request $request)
    {
       $this->customer = Customer::where('email',$request->user_name)
            ->orWhere('mobile',$request->user_name)
            ->first();
       if ($this->customer){
           if (password_verify($request->password,$this->customer->password)){
               Session::put('customerId',$this->customer->id);
               Session::put('customerName',$this->customer->name);

               if(Session::get('checkout'))
               {
                   return redirect('/checkout');
               }
               return redirect('/');


           }else{
               return back()->with('message','please used  valid password');
           }
       }else{
           return back()->with('message','please used  valid email or phone');
       }

    }

    public function logout(){
        Session::forget('customerId');
        Session::forget('customerName');
        return redirect('/');
    }
}
