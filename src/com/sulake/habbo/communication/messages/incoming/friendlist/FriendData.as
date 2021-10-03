package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_873:int;
      
      private var var_728:Boolean;
      
      private var var_1531:Boolean;
      
      private var var_569:String;
      
      private var var_1489:int;
      
      private var var_1757:String;
      
      private var var_1726:String;
      
      private var var_1727:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_873 = param1.readInteger();
         this.var_728 = param1.readBoolean();
         this.var_1531 = param1.readBoolean();
         this.var_569 = param1.readString();
         this.var_1489 = param1.readInteger();
         this.var_1757 = param1.readString();
         this.var_1726 = param1.readString();
         this.var_1727 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_873;
      }
      
      public function get online() : Boolean
      {
         return this.var_728;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1531;
      }
      
      public function get figure() : String
      {
         return this.var_569;
      }
      
      public function get categoryId() : int
      {
         return this.var_1489;
      }
      
      public function get motto() : String
      {
         return this.var_1757;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1726;
      }
      
      public function get realName() : String
      {
         return this.var_1727;
      }
   }
}
