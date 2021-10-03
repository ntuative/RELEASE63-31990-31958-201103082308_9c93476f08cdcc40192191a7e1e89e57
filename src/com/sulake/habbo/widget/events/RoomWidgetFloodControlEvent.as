package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_831:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1601:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_831,false,false);
         this.var_1601 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1601;
      }
   }
}
