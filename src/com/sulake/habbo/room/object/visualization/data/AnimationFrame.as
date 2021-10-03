package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_567:int = -1;
      
      public static const const_1168:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_159:int = 0;
      
      private var var_2602:int = 1;
      
      private var var_952:int = 1;
      
      private var var_1875:int = 1;
      
      private var var_2667:int = -1;
      
      private var var_2666:int = 0;
      
      private var var_2668:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_159 = param3;
         this.var_2668 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2602 = param4;
         if(param5 < 0)
         {
            param5 = const_567;
         }
         this.var_952 = param5;
         this.var_1875 = param5;
         if(param7 >= 0)
         {
            this.var_2667 = param7;
            this.var_2666 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_159;
      }
      
      public function get repeats() : int
      {
         return this.var_2602;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_952;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2668;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_952 < 0)
         {
            return const_567;
         }
         return this.var_1875;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_952 > 0 && param1 > this.var_952)
         {
            param1 = this.var_952;
         }
         this.var_1875 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2667;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2666;
      }
   }
}
