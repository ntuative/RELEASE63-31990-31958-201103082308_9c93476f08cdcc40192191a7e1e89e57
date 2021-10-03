package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1122:Boolean;
      
      private var var_1123:Boolean;
      
      private var var_1382:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1122;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1123;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1382;
      }
      
      public function flush() : Boolean
      {
         this.var_1122 = false;
         this.var_1123 = false;
         this.var_1382 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1122 = param1.readBoolean();
         this.var_1123 = param1.readBoolean();
         this.var_1382 = param1.readBoolean();
         return true;
      }
   }
}
