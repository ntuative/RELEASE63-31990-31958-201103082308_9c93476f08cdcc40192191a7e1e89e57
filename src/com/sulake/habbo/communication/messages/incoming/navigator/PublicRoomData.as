package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2422:String;
      
      private var var_2314:int;
      
      private var var_2175:int;
      
      private var var_2319:String;
      
      private var var_2421:int;
      
      private var var_1938:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2422 = param1.readString();
         this.var_2314 = param1.readInteger();
         this.var_2175 = param1.readInteger();
         this.var_2319 = param1.readString();
         this.var_2421 = param1.readInteger();
         this.var_1938 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2422;
      }
      
      public function get unitPort() : int
      {
         return this.var_2314;
      }
      
      public function get worldId() : int
      {
         return this.var_2175;
      }
      
      public function get castLibs() : String
      {
         return this.var_2319;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2421;
      }
      
      public function get nodeId() : int
      {
         return this.var_1938;
      }
   }
}
