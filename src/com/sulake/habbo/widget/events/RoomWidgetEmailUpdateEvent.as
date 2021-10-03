package com.sulake.habbo.widget.events
{
   public class RoomWidgetEmailUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_515:String = "rweuw_change_succesful";
      
      public static const const_531:String = "rweue_change_error";
       
      
      public function RoomWidgetEmailUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
