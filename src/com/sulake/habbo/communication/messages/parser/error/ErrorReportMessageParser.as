package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1511:int;
      
      private var var_1870:int;
      
      private var var_1871:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1870 = param1.readInteger();
         this.var_1511 = param1.readInteger();
         this.var_1871 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1511 = 0;
         this.var_1870 = 0;
         this.var_1871 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1511;
      }
      
      public function get messageId() : int
      {
         return this.var_1870;
      }
      
      public function get timestamp() : String
      {
         return this.var_1871;
      }
   }
}
