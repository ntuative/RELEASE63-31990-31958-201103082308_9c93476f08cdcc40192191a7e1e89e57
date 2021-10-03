package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2124:Number;
      
      private var var_1701:Number;
      
      private var var_845:Number;
      
      private var var_844:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2124 = param1;
         this.var_1701 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_845 = param1;
         this.var_844 = 0;
      }
      
      public function update() : void
      {
         this.var_845 += this.var_1701;
         this.var_844 += this.var_845;
         if(this.var_844 > 0)
         {
            this.var_844 = 0;
            this.var_845 = this.var_2124 * -1 * this.var_845;
         }
      }
      
      public function get location() : Number
      {
         return this.var_844;
      }
   }
}
