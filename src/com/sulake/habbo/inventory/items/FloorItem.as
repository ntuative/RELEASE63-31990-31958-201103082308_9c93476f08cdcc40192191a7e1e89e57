package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_1999:String;
      
      protected var var_1454:Number;
      
      protected var var_2761:Boolean;
      
      protected var var_2760:Boolean;
      
      protected var var_2504:Boolean;
      
      protected var var_2437:Boolean;
      
      protected var var_2759:int;
      
      protected var var_2502:int;
      
      protected var var_2505:int;
      
      protected var var_2503:int;
      
      protected var var_1667:String;
      
      protected var var_2020:int;
      
      protected var var_830:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
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
         this.var_2759 = param11;
         this.var_2502 = param12;
         this.var_2505 = param13;
         this.var_2503 = param14;
         this.var_1667 = param15;
         this.var_2020 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_1999;
      }
      
      public function get extra() : Number
      {
         return this.var_1454;
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
      
      public function get expires() : int
      {
         return this.var_2759;
      }
      
      public function get creationDay() : int
      {
         return this.var_2502;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2505;
      }
      
      public function get creationYear() : int
      {
         return this.var_2503;
      }
      
      public function get slotId() : String
      {
         return this.var_1667;
      }
      
      public function get songId() : int
      {
         return this.var_2020;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_830 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_830;
      }
   }
}
