package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2180:int;
      
      private var var_1448:String;
      
      private var var_2501:int;
      
      private var var_2506:int;
      
      private var _category:int;
      
      private var var_1999:String;
      
      private var var_1454:int;
      
      private var var_2500:int;
      
      private var var_2502:int;
      
      private var var_2505:int;
      
      private var var_2503:int;
      
      private var var_2504:Boolean;
      
      private var var_2839:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2180 = param1;
         this.var_1448 = param2;
         this.var_2501 = param3;
         this.var_2506 = param4;
         this._category = param5;
         this.var_1999 = param6;
         this.var_1454 = param7;
         this.var_2500 = param8;
         this.var_2502 = param9;
         this.var_2505 = param10;
         this.var_2503 = param11;
         this.var_2504 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2180;
      }
      
      public function get itemType() : String
      {
         return this.var_1448;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2501;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2506;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1999;
      }
      
      public function get extra() : int
      {
         return this.var_1454;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2500;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2504;
      }
      
      public function get songID() : int
      {
         return this.var_1454;
      }
   }
}
