<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    use HasFactory;
    private static $brand,$image,$imageNewName,$directory,$extension,$imgUrl;

    public static function saveBrand($request){
        self::$brand = new Brand();
        self::$brand->name = $request->name;
        self::$brand->image = self::getImgUrl($request);
        self::$brand->save();
    }

    private static function getImgUrl($request){
        self::$image =$request->file('image');
        self::$extension = self::$image->extension();
        self::$imageNewName = rand(000 ,999).'.'.self::$extension;
        self::$directory = 'admin/image/brand/';
        self::$image->move(self::$directory,self::$imageNewName);
        self::$imgUrl = self::$directory.self::$imageNewName;
        return self::$imgUrl;
    }

    public static function statusUpdate($id){
       self::$brand = Brand::find($id);
       if (self::$brand->status == 1)
       {
           self::$brand->status = 0 ;
       }
       else
       {
           self::$brand->status = 1 ;
       }
        self::$brand->save() ;
    }

    public static function updateBrand($request,$id){
        self::$brand = Brand::find($id);
        self::$brand->name = $request->name;
        if ($request->file('image')){
            if (file_exists(self::$brand->image)){
                unlink(self::$brand->image);
            }
            self::$brand->image = self::getImgUrl($request);
        }
        self::$brand->save();
    }

    public static function deleteBrand($id){
      self::$brand =  Brand::find($id);
      if (self::$brand->image){
          unlink(self::$brand->image);
      }
        self::$brand->delete();
    }
}
