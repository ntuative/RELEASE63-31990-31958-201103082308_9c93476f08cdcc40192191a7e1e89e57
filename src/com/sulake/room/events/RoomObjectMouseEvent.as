package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_263:String = "ROE_MOUSE_CLICK";
      
      public static const const_1889:String = "ROE_MOUSE_ENTER";
      
      public static const const_532:String = "ROE_MOUSE_MOVE";
      
      public static const const_1900:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1920:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_508:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1790:String = "";
      
      private var var_2429:Boolean;
      
      private var var_2428:Boolean;
      
      private var var_2426:Boolean;
      
      private var var_2423:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1790 = param2;
         this.var_2429 = param5;
         this.var_2428 = param6;
         this.var_2426 = param7;
         this.var_2423 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1790;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2429;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2428;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2426;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2423;
      }
   }
}
