package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2326:int;
      
      private var var_2325:int;
      
      private var var_2327:int;
      
      private var var_2324:int;
      
      private var var_97:Array;
      
      private var var_214:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_97 = new Array();
         this.var_214 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2326 = param1.readInteger();
         this.var_2325 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         this.var_2324 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_97.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_214.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2326;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2325;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2327;
      }
      
      public function get categories() : Array
      {
         return this.var_97;
      }
      
      public function get friends() : Array
      {
         return this.var_214;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2324;
      }
   }
}
