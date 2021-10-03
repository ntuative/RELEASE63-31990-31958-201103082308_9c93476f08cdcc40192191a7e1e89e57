package com.sulake.habbo.widget.events
{
   public class RoomWidgetWelcomeGiftUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_121:String = "rwwgue_welcome_gift_widget_status";
       
      
      private var var_1230:String;
      
      private var var_1491:Boolean;
      
      private var var_2454:Boolean;
      
      private var var_2453:Boolean;
      
      private var _furniId:int;
      
      public function RoomWidgetWelcomeGiftUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_121,param1,param2);
      }
      
      public function get email() : String
      {
         return this.var_1230;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1491;
      }
      
      public function get allowEmailChange() : Boolean
      {
         return this.var_2454;
      }
      
      public function get update() : Boolean
      {
         return this.var_2453;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function set email(param1:String) : void
      {
         this.var_1230 = param1;
      }
      
      public function set isVerified(param1:Boolean) : void
      {
         this.var_1491 = param1;
      }
      
      public function set allowEmailChange(param1:Boolean) : void
      {
         this.var_2454 = param1;
      }
      
      public function set update(param1:Boolean) : void
      {
         this.var_2453 = param1;
      }
      
      public function set furniId(param1:int) : void
      {
         this._furniId = param1;
      }
   }
}
