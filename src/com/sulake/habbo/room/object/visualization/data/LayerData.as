package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_817:String = "";
      
      public static const const_509:int = 0;
      
      public static const const_474:int = 255;
      
      public static const const_626:Boolean = false;
      
      public static const const_428:int = 0;
      
      public static const const_475:int = 0;
      
      public static const const_472:int = 0;
      
      public static const const_988:int = 1;
      
      public static const const_990:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2049:String = "";
      
      private var var_1857:int = 0;
      
      private var var_2045:int = 255;
      
      private var var_2047:Boolean = false;
      
      private var var_2048:int = 0;
      
      private var var_2046:int = 0;
      
      private var var_2050:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2049 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2049;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1857 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1857;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2045 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2045;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2047 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2047;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2048 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2048;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2046 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2046;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2050 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2050;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
