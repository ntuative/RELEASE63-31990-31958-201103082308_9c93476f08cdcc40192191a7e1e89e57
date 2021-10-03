package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2316:int;
      
      private var var_2317:int;
      
      private var var_1079:int;
      
      private var var_1078:int;
      
      private var var_1696:int;
      
      private var var_2315:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2316 = param1.readInteger();
         this.var_2317 = param1.readInteger();
         this.var_1079 = param1.readInteger();
         this.var_1078 = param1.readInteger();
         this.var_1696 = param1.readInteger();
         this.var_2315 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2316;
      }
      
      public function get charges() : int
      {
         return this.var_2317;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1079;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1078;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2315;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1696;
      }
   }
}
