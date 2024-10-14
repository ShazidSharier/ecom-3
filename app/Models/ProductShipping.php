<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductShipping extends Model
{
    use HasFactory;
    private static $productShipping, $productShippings;

    public static function saveProductShipping($shippings, $id)
    {
        foreach ($shippings as $shipping)
        {
            self::$productShipping = new ProductShipping();
            self::$productShipping->product_id    = $id;
            self::$productShipping->shipping_id   = $shipping;
            self::$productShipping->save();
        }
    }

    public static function updateProductShipping($shippings, $id)
    {
        self::$productShippings = ProductShipping::where('product_id', $id)->get();
        foreach (self::$productShippings as $productShipping)
        {
            $productShipping->delete();
        }
        self::saveproductShipping($shippings, $id);
    }

    public function shipping()
    {
        return $this->belongsTo(Shipping::class);
    }
}
