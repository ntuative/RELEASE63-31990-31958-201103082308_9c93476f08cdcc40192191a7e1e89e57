package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_178:int = 0;
       
      
      private var var_2111:int = 0;
      
      private var var_1350:Dictionary;
      
      private var var_1679:int = 0;
      
      private var var_1678:int = 0;
      
      private var var_2037:Boolean = false;
      
      private var var_2035:int = 0;
      
      private var var_2042:int = 0;
      
      public function Purse()
      {
         this.var_1350 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2111;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2111 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1679;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1679 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1678;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1678 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1679 > 0 || this.var_1678 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2037;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2037 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2035;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2035 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2042;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2042 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1350;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1350 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1350[param1];
      }
   }
}
