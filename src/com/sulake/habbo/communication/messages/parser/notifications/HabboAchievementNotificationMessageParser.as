package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1374:int;
      
      private var var_1738:int;
      
      private var var_2114:int;
      
      private var var_1729:int;
      
      private var var_1375:int;
      
      private var var_2169:String = "";
      
      private var var_2321:String = "";
      
      private var var_2320:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1374 = param1.readInteger();
         this.var_2169 = param1.readString();
         this.var_1738 = param1.readInteger();
         this.var_2114 = param1.readInteger();
         this.var_1729 = param1.readInteger();
         this.var_1375 = param1.readInteger();
         this.var_2320 = param1.readInteger();
         this.var_2321 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1374;
      }
      
      public function get points() : int
      {
         return this.var_1738;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2114;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1729;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1375;
      }
      
      public function get badgeID() : String
      {
         return this.var_2169;
      }
      
      public function get achievementID() : int
      {
         return this.var_2320;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2321;
      }
   }
}
