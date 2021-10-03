package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1342:Boolean = false;
      
      private var var_1770:int;
      
      private var var_1567:Array;
      
      private var var_674:Array;
      
      private var var_675:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1342 = _loc2_.isWrappingEnabled;
         this.var_1770 = _loc2_.wrappingPrice;
         this.var_1567 = _loc2_.stuffTypes;
         this.var_674 = _loc2_.boxTypes;
         this.var_675 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1342;
      }
      
      public function get price() : int
      {
         return this.var_1770;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1567;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_674;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_675;
      }
   }
}
