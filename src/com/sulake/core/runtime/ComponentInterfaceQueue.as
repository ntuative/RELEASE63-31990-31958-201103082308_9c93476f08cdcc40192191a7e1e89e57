package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1642:IID;
      
      private var var_754:Boolean;
      
      private var var_1058:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1642 = param1;
         this.var_1058 = new Array();
         this.var_754 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1642;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_754;
      }
      
      public function get receivers() : Array
      {
         return this.var_1058;
      }
      
      public function dispose() : void
      {
         if(!this.var_754)
         {
            this.var_754 = true;
            this.var_1642 = null;
            while(this.var_1058.length > 0)
            {
               this.var_1058.pop();
            }
            this.var_1058 = null;
         }
      }
   }
}
