package com.sulake.room.events
{
   import flash.events.Event;
   
   public class RoomObjectEvent extends Event
   {
       
      
      private var var_378:int = 0;
      
      private var var_1764:String = "";
      
      public function RoomObjectEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_378 = param2;
         this.var_1764 = param3;
      }
      
      public function get objectId() : int
      {
         return this.var_378;
      }
      
      public function get objectType() : String
      {
         return this.var_1764;
      }
   }
}
