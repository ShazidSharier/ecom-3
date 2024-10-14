<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductImage;
use App\Models\ProductShipping;
use App\Models\ProductSize;
use App\Models\Shipping;
use App\Models\Size;
use App\Models\SubCategory;
use App\Models\Unit;
use Illuminate\Http\Request;
use function Carbon\this;

class ProductController extends Controller
{
    public $productId;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.product.index',[
            'products'=>Product::latest()->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.product.create',[
            'categories'    => Category::where('status',1)->get(),
            'subCategories' => SubCategory::where('status',1)->get(),
            'brands'        => Brand::where('status',1)->get(),
            'units'         => Unit::where('status',1)->get(),
            'colors'        => Color::all(),
            'sizes'         => Size::all(),
            'shippings'     => Shipping::all(),
        ]);
    }
    public function getSubCategory()
    {
        $categoryId = $_GET['id'];
        $subCategories = SubCategory::where('category_id', $categoryId)->get();
        return response()->json($subCategories);
    }

    /**
     * Store a newly created resource in storage.
     */

    public function store(Request $request)
    {
        $request->validate([
            'category_id'       => 'required',
            'sub_category_id'   => 'required',
            'brand_id'          => 'required',
            'unit_id'           => 'required',
            'name'              => 'required|min:3',
            'code'              => 'required|min:1',
            'color'             => 'required',
            'size'              => 'required',
            'meta_title'        => 'required',
            'meta_description'  => 'required',
            'regular_price'     => 'required',
            'selling_price'     => 'required',
            'stock_amount'      => 'required',
            'short_description' => 'required',
            'long_description'  => 'required',
            'image'             => 'required',
            'other_image'       => 'required'
        ]);

        $this->productId = Product::saveNewProduct($request);
        ProductShipping::saveProductShipping($request->shipping, $this->productId);
        ProductColor::saveProductColor($request->color, $this->productId);
        ProductSize::saveProductSize($request->size, $this->productId);
        ProductImage::newProductImage($request->file('other_image'), $this->productId);
        return redirect('/product')->with('message', 'Product info created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return view('admin.product.show',['product' => Product::find($id)]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('admin.product.edit',[
            'categories'    => Category::where('status',1)->get(),
            'subCategories' => SubCategory::where('status',1)->get(),
            'brands'        => Brand::where('status',1)->get(),
            'units'         => Unit::where('status',1)->get(),
            'colors'        => Color::all(),
            'sizes'         => Size::all(),
            'shippings'     => Shipping::all(),
            'product'       => Product::find($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        Product::updateProduct($request, $id);
        ProductShipping::updateProductShipping($request->shipping, $id);
        ProductColor::updateProductColor($request->color, $id);
        ProductSize::updateProductSize($request->size, $id);
        if($request->file('other_image'))
        {
            ProductImage::updateProductImage($request->file('other_image'), $id);
        }
        return redirect('/product')->with('message', 'Product info update successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Product::deleteProduct($id);
        return redirect('/product')->with('message', 'Product info delete successfully.');

    }
}
