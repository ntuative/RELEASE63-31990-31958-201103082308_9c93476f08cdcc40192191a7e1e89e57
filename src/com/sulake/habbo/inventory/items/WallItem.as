package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _type:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var var_1454:Number;
      
      protected var var_1999:String;
      
      protected var var_2761:Boolean;
      
      protected var var_2760:Boolean;
      
      protected var var_2504:Boolean;
      
      protected var var_2437:Boolean;
      
      protected var var_830:Boolean;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2504 = param5;
         this.var_2760 = param6;
         this.var_2761 = param7;
         this.var_2437 = param8;
         this.var_1999 = param9;
         this.var_1454 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get extra() : Number
      {
         return this.var_1454;
      }
      
      public function get stuffData() : String
      {
         return this.var_1999;
      }
      
      public function set stuffData(param1:String) : void
      {
         this.var_1999 = param1;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2761;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2760;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2504;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2437;
      }
      
      public function get locked() : Boolean
      {
         return this.var_830;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_830 = param1;
      }
   }
}
