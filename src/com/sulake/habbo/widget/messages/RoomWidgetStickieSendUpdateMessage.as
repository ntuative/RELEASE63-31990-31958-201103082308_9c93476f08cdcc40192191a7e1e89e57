package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_452:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_631:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_378:int;
      
      private var _text:String;
      
      private var var_902:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         this.var_378 = param2;
         this._text = param3;
         this.var_902 = param4;
      }
      
      public function get objectId() : int
      {
         return this.var_378;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_902;
      }
   }
}
