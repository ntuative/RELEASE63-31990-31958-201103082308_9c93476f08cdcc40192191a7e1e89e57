package com.sulake.habbo.messenger.domain
{
   import com.sulake.core.runtime.IDisposable;
   
   public class Conversation implements IDisposable
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1531:Boolean;
      
      private var var_569:String;
      
      private var var_1268:Array;
      
      private var var_1267:Boolean;
      
      private var var_194:Boolean;
      
      private var _disposed:Boolean;
      
      public function Conversation(param1:int, param2:String, param3:String, param4:Boolean)
      {
         this.var_1268 = new Array();
         super();
         this._id = param1;
         this._name = param2;
         this.var_569 = param3;
         this.var_1531 = param4;
      }
      
      public function addMessage(param1:Message) : void
      {
         this.var_1268.push(param1);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(param1)
         {
            this.var_1267 = false;
         }
         this.var_194 = param1;
      }
      
      public function method_4(param1:Boolean) : void
      {
         if(this.var_194)
         {
            this.var_1267 = false;
         }
         else
         {
            this.var_1267 = param1;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1268 = null;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get selected() : Boolean
      {
         return this.var_194;
      }
      
      public function get messages() : Array
      {
         return this.var_1268;
      }
      
      public function get newMessageArrived() : Boolean
      {
         return this.var_1267;
      }
      
      public function get figure() : String
      {
         return this.var_569;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1531;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function set followingAllowed(param1:Boolean) : void
      {
         this.var_1531 = param1;
      }
   }
}
