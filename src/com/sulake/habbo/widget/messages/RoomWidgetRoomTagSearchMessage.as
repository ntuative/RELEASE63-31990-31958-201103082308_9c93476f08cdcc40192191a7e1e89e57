package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_685:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2049:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_685);
         this.var_2049 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2049;
      }
   }
}
