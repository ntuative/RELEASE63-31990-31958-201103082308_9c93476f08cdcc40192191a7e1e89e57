package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_365:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1181:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1090:String = "RWOCM_PIXELS";
      
      public static const const_1053:String = "RWOCM_CREDITS";
       
      
      private var var_2488:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_365);
         this.var_2488 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2488;
      }
   }
}
