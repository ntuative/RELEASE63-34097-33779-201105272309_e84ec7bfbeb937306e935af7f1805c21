package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2397:Number = 0.0;
      
      private var var_2396:Number = 0.0;
      
      private var var_2931:Number = 0.0;
      
      private var var_2932:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2397 = param1;
         this.var_2396 = param2;
         this.var_2931 = param3;
         this.var_2932 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2397;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2396;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2931;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2932;
      }
   }
}
