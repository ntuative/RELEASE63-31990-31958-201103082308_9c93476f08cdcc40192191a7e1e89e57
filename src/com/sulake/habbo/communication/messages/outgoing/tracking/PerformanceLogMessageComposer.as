package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2438:int = 0;
      
      private var var_1317:String = "";
      
      private var var_1630:String = "";
      
      private var var_2191:String = "";
      
      private var var_2465:String = "";
      
      private var var_1759:int = 0;
      
      private var var_2463:int = 0;
      
      private var var_2462:int = 0;
      
      private var var_1320:int = 0;
      
      private var var_2464:int = 0;
      
      private var var_1319:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2438 = param1;
         this.var_1317 = param2;
         this.var_1630 = param3;
         this.var_2191 = param4;
         this.var_2465 = param5;
         if(param6)
         {
            this.var_1759 = 1;
         }
         else
         {
            this.var_1759 = 0;
         }
         this.var_2463 = param7;
         this.var_2462 = param8;
         this.var_1320 = param9;
         this.var_2464 = param10;
         this.var_1319 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2438,this.var_1317,this.var_1630,this.var_2191,this.var_2465,this.var_1759,this.var_2463,this.var_2462,this.var_1320,this.var_2464,this.var_1319];
      }
   }
}
