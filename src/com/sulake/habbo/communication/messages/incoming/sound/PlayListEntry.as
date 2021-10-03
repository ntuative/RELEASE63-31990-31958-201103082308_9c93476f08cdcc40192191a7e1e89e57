package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2020:int;
      
      private var var_2538:int;
      
      private var _songName:String;
      
      private var var_2540:String;
      
      private var var_2539:Number = 0.0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2020 = param1;
         this.var_2538 = param2;
         this._songName = param3;
         this.var_2540 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2020;
      }
      
      public function get length() : int
      {
         return this.var_2538;
      }
      
      public function get name() : String
      {
         return this._songName;
      }
      
      public function get creator() : String
      {
         return this.var_2540;
      }
      
      public function get startPlayHeadPos() : Number
      {
         return this.var_2539;
      }
      
      public function set startPlayHeadPos(param1:Number) : void
      {
         this.var_2539 = param1;
      }
   }
}
