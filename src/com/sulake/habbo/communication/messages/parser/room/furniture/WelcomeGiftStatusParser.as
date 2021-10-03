package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class WelcomeGiftStatusParser implements IMessageParser
   {
       
      
      private var var_1230:String;
      
      private var var_1491:Boolean;
      
      private var var_2568:Boolean;
      
      private var _furniId:int;
      
      public function WelcomeGiftStatusParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1230 = param1.readString();
         this.var_1491 = param1.readBoolean();
         this.var_2568 = param1.readBoolean();
         this._furniId = param1.readInteger();
         return true;
      }
      
      public function get email() : String
      {
         return this.var_1230;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1491;
      }
      
      public function get allowChange() : Boolean
      {
         return this.var_2568;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
