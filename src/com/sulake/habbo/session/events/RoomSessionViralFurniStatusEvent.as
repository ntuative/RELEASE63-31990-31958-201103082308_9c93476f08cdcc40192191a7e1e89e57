package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_487:String = "RSVFS_STATUS";
      
      public static const const_507:String = "RSVFS_RECEIVED";
       
      
      private var var_174:String;
      
      private var var_378:int;
      
      private var var_384:int = -1;
      
      private var _shareId:String;
      
      private var var_2273:String;
      
      private var var_2274:Boolean;
      
      private var var_1372:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_384 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_378;
      }
      
      public function get status() : int
      {
         return this.var_384;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2273;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2274;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1372;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_378 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_384 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2273 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2274 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1372 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_174;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_174 = param1;
      }
   }
}
