package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1676:int;
      
      private var var_2245:int;
      
      private var var_760:int;
      
      private var var_502:Number;
      
      private var var_2246:Boolean;
      
      private var var_2244:int;
      
      private var var_1675:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_502);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2245 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2244 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2246 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_760;
         if(this.var_760 == 1)
         {
            this.var_502 = param1;
            this.var_1676 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_760);
            this.var_502 = this.var_502 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2246 && param3 - this.var_1676 >= this.var_2245)
         {
            this.var_760 = 0;
            if(this.var_1675 < this.var_2244)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1675;
               this.var_1676 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
