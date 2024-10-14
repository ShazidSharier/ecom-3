<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\User;
use PDF;
use Illuminate\Http\Request;
use function Symfony\Component\Uid\Factory\nameBased;

class OrderController extends Controller
{
    private $order, $orderDetails;

    public function checkUserEmail()
    {
        $user= User::where('email', $_GET['email'])->first();
        if($user)
        {
            return response()->json([
                'email_status' => 1,
                'message'      => "Email already exist",
            ]);
        }
        else {
            return response()->json([
                'email_status' => 0,
                'message'      => "Email Avaliable",
            ]);
        }
    }

    public function checkProductName()
    {
        $product= Product::where('name', $_GET['name'])->first();
        if($product)
        {
            return response()->json([
                'name_status' => 1,
                'message'      => "Name already exist",
            ]);
        }
        else {
            return response()->json([
                'name_status' => 0,
                'message'      => "Name Avaliable",
            ]);
        }
    }

    public function index()
    {
        return view('admin.order.index',['orders' => Order::latest()->get()]);
    }

    public function detail($id)
    {
        return view('admin.order.detail',['order' => Order::find($id)]);
    }

    public function edit($id)
    {
        if (Order::find($id)->order_status == 'Complete')
        {
            return back()->with('message', 'Sorry it can not be edited.');
        }
        return view('admin.order.edit',['order' => Order::find($id)]);
    }

    public function update(Request $request, $id)
    {
        $this->order = Order::find($id);
        if ($request->order_status == 'Pending' || $request->order_status == 'Cancel')
        {
            $this->order->order_status      = $request->order_status;
            $this->order->delivery_status   = $request->order_status;
            $this->order->payment_status    = $request->order_status;
        }
        elseif ($request->order_status == 'Processing')
        {
            $this->order->order_status      = $request->order_status;
            $this->order->delivery_status   = $request->order_status;
            $this->order->delivery_address  = $request->delivery_address;
            $this->order->payment_status    = $request->order_status;
            $this->order->courier_id        = $request->courier_id;
        }
        elseif ($request->order_status == 'Complete')
        {
            $this->order->order_status      = $request->order_status;
            $this->order->delivery_status   = $request->order_status;
            $this->order->delivery_date     = date('Y-m-d');
            $this->order->delivery_timestamp= strtotime(date('Y-m-d'));
            $this->order->payment_status    = $request->order_status;
            $this->order->payment_date      = date('Y-m-d');
            $this->order->payment_timestamp = strtotime(date('Y-m-d'));
        }
        $this->order->save();
        return redirect('/order')->with('message', 'Order Status info update successfully.');
    }

    public function invoice($id)
    {
        return view('admin.order.invoice',['order' => Order::find($id)]);
    }

    public function downloadInvoice($id)
    {
        $pdfData = PDF::loadView('admin.order.download-invoice', ['order' => Order::find($id)]);
        return $pdfData->stream();
    }

    public function destroy(Request $request, $id)
    {

        if (Order::find($id)->order_status == 'Cancel')
        {
            $this->orderDetails = OrderDetail::where('order_id', $id)->get();
            foreach ($this->orderDetails as $orderDetail)
            {
                $orderDetail->delete();
            }
            Order::find($id)->delete();
            return back()->with('message', 'Order info delete successfully.');
        }
        else
        {
            return back()->with('message', "Sorry .. it cam nt be deleted.");
        }

    }
}
