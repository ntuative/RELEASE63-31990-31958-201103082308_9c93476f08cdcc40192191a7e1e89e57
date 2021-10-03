package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1629:int;
      
      private var var_2609:int;
      
      private var var_1180:int;
      
      private var var_479:Number;
      
      private var var_2610:Boolean;
      
      private var var_2608:int;
      
      private var var_1845:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2609 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2608 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2610 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1180;
         if(this.var_1180 == 1)
         {
            this.var_479 = param1;
            this.var_1629 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1180);
            this.var_479 = this.var_479 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2610 && param3 - this.var_1629 >= this.var_2609 && this.var_1845 < this.var_2608)
         {
            _loc5_ = 1000 / this.var_479;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1845;
            this.var_1629 = param3;
            this.var_1180 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
