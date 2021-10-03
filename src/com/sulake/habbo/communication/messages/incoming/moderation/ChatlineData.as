package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2144:int;
      
      private var var_2145:int;
      
      private var var_2143:int;
      
      private var var_2146:String;
      
      private var var_1824:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2144 = param1.readInteger();
         this.var_2145 = param1.readInteger();
         this.var_2143 = param1.readInteger();
         this.var_2146 = param1.readString();
         this.var_1824 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2144;
      }
      
      public function get minute() : int
      {
         return this.var_2145;
      }
      
      public function get chatterId() : int
      {
         return this.var_2143;
      }
      
      public function get chatterName() : String
      {
         return this.var_2146;
      }
      
      public function get msg() : String
      {
         return this.var_1824;
      }
   }
}
