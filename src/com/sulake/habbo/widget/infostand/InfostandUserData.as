package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   
   public class InfostandUserData
   {
       
      
      private var _userId:int = 0;
      
      private var _userName:String = "";
      
      private var var_248:Array;
      
      private var var_1533:Array;
      
      private var var_1422:int = 0;
      
      private var var_2060:String = "";
      
      private var var_1228:int = 0;
      
      private var var_2059:int = 0;
      
      private var var_2061:int = 0;
      
      private var _type:String;
      
      private var _petRespectLeft:int = 0;
      
      public function InfostandUserData()
      {
         this.var_248 = [];
         this.var_1533 = [];
         super();
      }
      
      public function set userId(param1:int) : void
      {
         this._userId = param1;
      }
      
      public function set userName(param1:String) : void
      {
         this._userName = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_248 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1422 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2060 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1228 = param1;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2059 = param1;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2061 = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         this._petRespectLeft = param1;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1533 = param1;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get badges() : Array
      {
         return this.var_248.slice();
      }
      
      public function get groupId() : int
      {
         return this.var_1422;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2060;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1228;
      }
      
      public function get carryItem() : int
      {
         return this.var_2059;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2061;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1533;
      }
      
      public function isBot() : Boolean
      {
         return this.type == RoomWidgetUserInfoUpdateEvent.BOT;
      }
      
      public function setData(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.userId = param1.webID;
         this.userName = param1.name;
         this.badges = param1.badges;
         this.givableBadges = param1.givableBadges;
         this.groupId = param1.groupId;
         this.groupBadgeId = param1.groupBadgeId;
         this.respectLeft = param1.respectLeft;
         this.carryItem = param1.carryItem;
         this.userRoomId = param1.userRoomId;
         this.type = param1.type;
      }
   }
}
