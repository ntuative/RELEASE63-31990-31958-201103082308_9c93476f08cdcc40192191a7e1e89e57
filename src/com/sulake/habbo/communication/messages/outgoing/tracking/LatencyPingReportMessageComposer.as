package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2151:int;
      
      private var var_2153:int;
      
      private var var_2152:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2151 = param1;
         this.var_2153 = param2;
         this.var_2152 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2151,this.var_2153,this.var_2152];
      }
      
      public function dispose() : void
      {
      }
   }
}
