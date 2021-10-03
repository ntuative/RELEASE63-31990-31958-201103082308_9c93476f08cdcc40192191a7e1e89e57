package com.sulake.core.assets
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class BitmapDataAsset implements ILazyAsset
   {
      
      protected static var var_537:uint = 0;
      
      protected static var var_515:uint = 0;
       
      
      private var _disposed:Boolean = false;
      
      private var var_102:Object;
      
      private var _bitmap:BitmapData;
      
      private var _offset:Point;
      
      private var var_1330:Boolean = false;
      
      private var var_1331:Boolean = false;
      
      private var var_1589:AssetTypeDeclaration;
      
      private var var_997:String;
      
      public function BitmapDataAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         this._offset = new Point(0,0);
         super();
         this.var_1589 = param1;
         this.var_997 = param2;
         ++var_537;
      }
      
      public static function get instances() : uint
      {
         return var_537;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_515;
      }
      
      public function get url() : String
      {
         return this.var_997;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1330;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1331;
      }
      
      public function get offset() : Point
      {
         return this._offset;
      }
      
      public function get content() : Object
      {
         if(!this._bitmap)
         {
            this.prepareLazyContent();
         }
         return this._bitmap;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1589;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            --var_537;
            if(this._bitmap)
            {
               try
               {
                  var_515 -= this._bitmap.width * this._bitmap.height * 4;
                  this._bitmap.dispose();
               }
               catch(e:Error)
               {
               }
            }
            this.var_102 = null;
            this._bitmap = null;
            this._offset = null;
            this.var_1589 = null;
            this.var_997 = null;
            this._disposed = true;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         this.var_102 = param1;
         this._bitmap = null;
      }
      
      public function prepareLazyContent() : void
      {
         var _loc1_:* = null;
         if(this.var_102 == null)
         {
            return;
         }
         if(this.var_102 is Class)
         {
            _loc1_ = new this.var_102() as Bitmap;
            if(_loc1_ != null)
            {
               this._bitmap = _loc1_.bitmapData.clone();
               _loc1_.bitmapData.dispose();
               if(this._bitmap != null)
               {
                  var_515 += this._bitmap.width * this._bitmap.height * 4;
                  this.var_102 = null;
                  return;
               }
               throw new Error("Failed to convert Bitmap Class to BitmapDataAsset!");
            }
            this._bitmap = new this.var_102() as BitmapData;
            if(this._bitmap != null)
            {
               this.var_102 = null;
               return;
            }
            throw new Error("Failed to convert BitmapData Class to BitmapDataAsset!");
         }
         if(this.var_102 is Bitmap)
         {
            this._bitmap = Bitmap(this.var_102).bitmapData;
            if(this._bitmap == null)
            {
               throw new Error("Failed to convert Bitmap to BitmapDataAsset!");
            }
            this.var_102 = null;
         }
         if(this.var_102 is BitmapData)
         {
            this._bitmap = this.var_102 as BitmapData;
            if(this._bitmap != null)
            {
               this.var_102 = null;
               return;
            }
            throw new Error("Failed to convert BitmapData to BitmapDataAsset!");
         }
         if(this.var_102 is BitmapDataAsset)
         {
            this._bitmap = BitmapDataAsset(this.var_102)._bitmap;
            this._offset = BitmapDataAsset(this.var_102)._offset;
            this.var_1330 = BitmapDataAsset(this.var_102).var_1330;
            this.var_1331 = BitmapDataAsset(this.var_102).var_1331;
            if(this._bitmap != null)
            {
               this.var_102 = null;
               return;
            }
            throw new Error("Failed to read content from BitmaDataAsset!");
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is BitmapDataAsset)
         {
            this._bitmap = BitmapDataAsset(param1)._bitmap;
            this._offset = BitmapDataAsset(param1)._offset;
            return;
         }
         throw new Error("Provided asset should be of type BitmapDataAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].attribute("key");
            _loc4_ = param1[_loc2_].attribute("value");
            switch(_loc3_)
            {
               case "offset":
                  _loc5_ = _loc4_.split(",");
                  this._offset.x = parseInt(_loc5_[0]);
                  this._offset.y = parseInt(_loc5_[1]);
                  break;
               case "flipH":
                  this.var_1330 = _loc4_ == "1" || _loc4_ == "true";
                  break;
               case "flipV":
                  this.var_1331 = _loc4_ == "1" || _loc4_ == "true";
                  break;
            }
            _loc2_++;
         }
      }
   }
}
