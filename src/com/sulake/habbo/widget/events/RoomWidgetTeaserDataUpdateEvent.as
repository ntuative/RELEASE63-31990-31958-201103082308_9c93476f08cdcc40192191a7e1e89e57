package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_473:String = "RWTDUE_TEASER_DATA";
      
      public static const const_659:String = "RWTDUE_GIFT_DATA";
      
      public static const const_649:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_378:int;
      
      private var _data:String;
      
      private var var_384:int;
      
      private var var_174:String;
      
      private var var_2273:String;
      
      private var var_2274:Boolean;
      
      private var var_1372:int = 0;
      
      private var var_2275:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_378;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_384;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2273;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2274;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2275;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1372;
      }
      
      public function set status(param1:int) : void
      {
         this.var_384 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2273 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2274 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2275 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_378 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_174;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_174 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1372 = param1;
      }
   }
}
