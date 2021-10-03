package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1374:int;
      
      private var var_298:String;
      
      private var var_2115:int;
      
      private var var_2114:int;
      
      private var var_1729:int;
      
      private var var_2116:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1374 = param1.readInteger();
         this.var_298 = param1.readString();
         this.var_2115 = param1.readInteger();
         this.var_2114 = param1.readInteger();
         this.var_1729 = param1.readInteger();
         this.var_2116 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_298;
      }
      
      public function get level() : int
      {
         return this.var_1374;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2115;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2114;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1729;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2116;
      }
   }
}
