package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_719:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_298:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_719);
         this.var_298 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_298;
      }
   }
}
