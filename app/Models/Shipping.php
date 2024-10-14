<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shipping extends Model
{
    use HasFactory;
    private static $shipping;

    public static function saveShipping($request)
    {
        self::$shipping = new Shipping();
        self::$shipping->name           = $request->name;
        self::$shipping->code         = $request->code;
        self::$shipping->save();
    }

    public static function statusUpdate($id)
    {
        self::$shipping = Shipping::find($id);
        if (self::$shipping->status == 1)
        {
            self::$shipping->status = 0 ;
        }
        else
        {
            self::$shipping->status = 1 ;
        }
        self::$shipping->save() ;
    }

    public static function updateShipping($request, $id)
    {
        self::$shipping = Shipping::find($id);
        self::$shipping->name           = $request->name;
        self::$shipping->code         = $request->code;
        self::$shipping->save();
    }

    public static function deleteShipping($id)
    {
        self::$shipping =  Shipping::find($id);
        self::$shipping->delete();
    }
}
