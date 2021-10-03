package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1767:Boolean;
      
      private var var_2489:int;
      
      private var var_415:Boolean;
      
      private var var_1131:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1767;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2489;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1131;
      }
      
      public function get owner() : Boolean
      {
         return this.var_415;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1131 != null)
         {
            this.var_1131.dispose();
            this.var_1131 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1767 = param1.readBoolean();
         if(this.var_1767)
         {
            this.var_2489 = param1.readInteger();
            this.var_415 = param1.readBoolean();
         }
         else
         {
            this.var_1131 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
