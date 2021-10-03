package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_85:String = "i";
      
      public static const const_91:String = "s";
      
      public static const const_252:String = "e";
       
      
      private var var_1953:String;
      
      private var var_2572:int;
      
      private var var_1497:String;
      
      private var var_1496:int;
      
      private var var_1954:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1953 = param1.readString();
         this.var_2572 = param1.readInteger();
         this.var_1497 = param1.readString();
         this.var_1496 = param1.readInteger();
         this.var_1954 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1953;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2572;
      }
      
      public function get extraParam() : String
      {
         return this.var_1497;
      }
      
      public function get productCount() : int
      {
         return this.var_1496;
      }
      
      public function get expiration() : int
      {
         return this.var_1954;
      }
   }
}
