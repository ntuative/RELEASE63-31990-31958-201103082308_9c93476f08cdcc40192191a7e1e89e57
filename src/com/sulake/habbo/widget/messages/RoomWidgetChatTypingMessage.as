package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_798:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_572:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_798);
         this.var_572 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_572;
      }
   }
}
