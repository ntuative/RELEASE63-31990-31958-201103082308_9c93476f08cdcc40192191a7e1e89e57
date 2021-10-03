package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserGivableBadgesUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_671:String = "RWUGBUE_USER_GIVABLE_BADGES";
       
      
      private var var_248:Array;
      
      public function RoomWidgetUserGivableBadgesUpdateEvent(param1:Array, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_248 = [];
         super(const_671,param2,param3);
         this.var_248 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_248;
      }
   }
}
