package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2329:int;
      
      private var var_1448:String;
      
      private var _objId:int;
      
      private var var_1689:int;
      
      private var _category:int;
      
      private var var_1999:String;
      
      private var var_2333:Boolean;
      
      private var var_2332:Boolean;
      
      private var var_2331:Boolean;
      
      private var var_2330:Boolean;
      
      private var var_2334:int;
      
      private var var_1454:int;
      
      private var var_1667:String = "";
      
      private var var_2020:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2329 = param1;
         this.var_1448 = param2;
         this._objId = param3;
         this.var_1689 = param4;
         this._category = param5;
         this.var_1999 = param6;
         this.var_2333 = param7;
         this.var_2332 = param8;
         this.var_2331 = param9;
         this.var_2330 = param10;
         this.var_2334 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1667 = param1;
         this.var_1454 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2329;
      }
      
      public function get itemType() : String
      {
         return this.var_1448;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1689;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1999;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2333;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2332;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2331;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2330;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2334;
      }
      
      public function get slotId() : String
      {
         return this.var_1667;
      }
      
      public function get songId() : int
      {
         return this.var_2020;
      }
      
      public function get extra() : int
      {
         return this.var_1454;
      }
   }
}
