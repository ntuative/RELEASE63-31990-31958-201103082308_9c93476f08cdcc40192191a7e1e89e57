package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1831:int;
      
      private var var_1832:int;
      
      private var var_1830:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get current() : int
      {
         return this.var_1831;
      }
      
      public function get next() : int
      {
         return this.var_1832;
      }
      
      public function get syncCount() : int
      {
         return this.var_1830;
      }
      
      public function flush() : Boolean
      {
         this.var_1831 = -1;
         this.var_1832 = -1;
         this.var_1830 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1831 = param1.readInteger();
         this.var_1832 = param1.readInteger();
         this.var_1830 = param1.readInteger();
         return true;
      }
   }
}
