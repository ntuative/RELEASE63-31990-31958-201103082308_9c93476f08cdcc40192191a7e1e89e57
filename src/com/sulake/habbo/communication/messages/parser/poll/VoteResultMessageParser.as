package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1187:String;
      
      private var var_1298:Array;
      
      private var var_1100:Array;
      
      private var var_1836:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1187;
      }
      
      public function get choices() : Array
      {
         return this.var_1298.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1100.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1836;
      }
      
      public function flush() : Boolean
      {
         this.var_1187 = "";
         this.var_1298 = [];
         this.var_1100 = [];
         this.var_1836 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1187 = param1.readString();
         this.var_1298 = [];
         this.var_1100 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1298.push(param1.readString());
            this.var_1100.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1836 = param1.readInteger();
         return true;
      }
   }
}
