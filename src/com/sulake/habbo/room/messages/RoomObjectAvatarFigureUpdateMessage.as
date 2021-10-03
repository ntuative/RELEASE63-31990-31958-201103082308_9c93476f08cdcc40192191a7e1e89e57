package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_569:String;
      
      private var var_2417:String;
      
      private var var_873:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_569 = param1;
         this.var_873 = param2;
         this.var_2417 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_569;
      }
      
      public function get race() : String
      {
         return this.var_2417;
      }
      
      public function get gender() : String
      {
         return this.var_873;
      }
   }
}
