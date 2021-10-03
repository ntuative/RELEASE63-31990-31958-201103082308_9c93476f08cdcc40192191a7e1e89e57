package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1614:String;
      
      private var var_1770:int;
      
      private var var_2374:Boolean;
      
      private var var_2378:Boolean;
      
      private var var_2375:int;
      
      private var var_2372:int;
      
      private var var_2373:int;
      
      private var var_2377:int;
      
      private var var_2376:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1614 = param1.readString();
         this.var_1770 = param1.readInteger();
         this.var_2374 = param1.readBoolean();
         this.var_2378 = param1.readBoolean();
         this.var_2375 = param1.readInteger();
         this.var_2372 = param1.readInteger();
         this.var_2373 = param1.readInteger();
         this.var_2377 = param1.readInteger();
         this.var_2376 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1614;
      }
      
      public function get price() : int
      {
         return this.var_1770;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2374;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2378;
      }
      
      public function get periods() : int
      {
         return this.var_2375;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2372;
      }
      
      public function get year() : int
      {
         return this.var_2373;
      }
      
      public function get month() : int
      {
         return this.var_2377;
      }
      
      public function get day() : int
      {
         return this.var_2376;
      }
   }
}
