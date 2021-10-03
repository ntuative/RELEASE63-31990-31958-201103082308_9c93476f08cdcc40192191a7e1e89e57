package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1342:Boolean;
      
      private var var_2722:int;
      
      private var var_1934:int;
      
      private var var_1933:int;
      
      private var var_2721:int;
      
      private var var_2723:int;
      
      private var var_2724:int;
      
      private var var_2658:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1342;
      }
      
      public function get commission() : int
      {
         return this.var_2722;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1934;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1933;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2723;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2721;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2724;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2658;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1342 = param1.readBoolean();
         this.var_2722 = param1.readInteger();
         this.var_1934 = param1.readInteger();
         this.var_1933 = param1.readInteger();
         this.var_2723 = param1.readInteger();
         this.var_2721 = param1.readInteger();
         this.var_2724 = param1.readInteger();
         this.var_2658 = param1.readInteger();
         return true;
      }
   }
}
