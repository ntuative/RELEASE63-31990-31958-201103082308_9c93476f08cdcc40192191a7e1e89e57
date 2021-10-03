package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1837:int;
      
      private var var_2592:int;
      
      private var var_1431:int;
      
      private var var_2306:int;
      
      private var var_108:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1837 = param1.readInteger();
         this.var_2592 = param1.readInteger();
         this.var_1431 = param1.readInteger();
         this.var_2306 = param1.readInteger();
         this.var_108 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1837);
      }
      
      public function get callId() : int
      {
         return this.var_1837;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2592;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1431;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2306;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_108;
      }
   }
}
