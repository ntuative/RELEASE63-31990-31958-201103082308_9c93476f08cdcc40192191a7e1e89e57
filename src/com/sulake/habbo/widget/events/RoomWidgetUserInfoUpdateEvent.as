package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_125:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_149:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1061:int = 2;
      
      public static const const_1107:int = 3;
      
      public static const const_1454:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1757:String = "";
      
      private var var_2322:int;
      
      private var var_2388:int = 0;
      
      private var var_2386:int = 0;
      
      private var var_569:String = "";
      
      private var var_45:BitmapData = null;
      
      private var var_248:Array;
      
      private var var_1533:Array;
      
      private var var_1422:int = 0;
      
      private var var_2060:String = "";
      
      private var var_2059:int = 0;
      
      private var var_2061:int = 0;
      
      private var var_1659:Boolean = false;
      
      private var var_1727:String = "";
      
      private var var_2385:Boolean = false;
      
      private var var_2381:Boolean = true;
      
      private var var_1228:int = 0;
      
      private var var_2383:Boolean = false;
      
      private var var_2382:Boolean = false;
      
      private var var_2387:Boolean = false;
      
      private var var_2380:Boolean = false;
      
      private var var_2390:Boolean = false;
      
      private var var_2384:Boolean = false;
      
      private var var_2389:int = 0;
      
      private var var_1661:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_248 = [];
         this.var_1533 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1757 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1757;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2322;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2388 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2388;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2386 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2386;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_569 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_569;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_45 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_248 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_248;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1533;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1533 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1422 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1422;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2060 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2060;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2385 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2385;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1228 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1228;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2383 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2383;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2382 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2382;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2387 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2387;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2380 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2380;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2390 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2390;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2384 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2384;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2389 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2389;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2381 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2381;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1661 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1661;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2059 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2059;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2061 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2061;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1659 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1659;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1727 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1727;
      }
   }
}
