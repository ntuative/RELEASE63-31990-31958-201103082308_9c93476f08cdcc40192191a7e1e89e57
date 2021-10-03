package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_944:int = 3;
       
      
      private var var_2479:int = -1;
      
      private var var_2483:int = -2;
      
      private var _targetLoc:Vector3d = null;
      
      private var var_416:Vector3d = null;
      
      private var var_2487:Boolean = false;
      
      private var var_2485:Boolean = false;
      
      private var var_2478:Boolean = false;
      
      private var var_2482:Boolean = false;
      
      private var var_2484:int = 0;
      
      private var var_2480:int = 0;
      
      private var var_2486:int = 0;
      
      private var var_2481:int = 0;
      
      private var var_1395:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_416;
      }
      
      public function get targetId() : int
      {
         return this.var_2479;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2483;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2487;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2485;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2478;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2482;
      }
      
      public function get screenWd() : int
      {
         return this.var_2484;
      }
      
      public function get screenHt() : int
      {
         return this.var_2480;
      }
      
      public function get roomWd() : int
      {
         return this.var_2486;
      }
      
      public function get roomHt() : int
      {
         return this.var_2481;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2479 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2483 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2487 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2485 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2478 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2482 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2484 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2480 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2486 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2481 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this._targetLoc == null)
         {
            this._targetLoc = new Vector3d();
         }
         if(this._targetLoc.x != param1.x || this._targetLoc.y != param1.y || this._targetLoc.z != param1.z)
         {
            this._targetLoc.assign(param1);
            this.var_1395 = 0;
         }
      }
      
      public function dispose() : void
      {
         this._targetLoc = null;
         this.var_416 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_416 != null)
         {
            return;
         }
         this.var_416 = new Vector3d();
         this.var_416.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this._targetLoc != null && this.var_416 != null)
         {
            ++this.var_1395;
            _loc4_ = Vector3d.dif(this._targetLoc,this.var_416);
            if(_loc4_.length <= param2)
            {
               this.var_416 = this._targetLoc;
               this._targetLoc = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_944 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1395 <= const_944)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_416 = Vector3d.sum(this.var_416,_loc4_);
            }
         }
      }
   }
}
