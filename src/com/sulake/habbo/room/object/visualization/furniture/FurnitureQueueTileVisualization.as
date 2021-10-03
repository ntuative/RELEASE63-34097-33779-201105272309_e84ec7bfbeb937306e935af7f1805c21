package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1370:int = 3;
      
      private static const const_1625:int = 2;
      
      private static const const_1624:int = 1;
      
      private static const const_1623:int = 15;
       
      
      private var var_295:Array;
      
      private var var_1341:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_295 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1625)
         {
            this.var_295 = new Array();
            this.var_295.push(const_1624);
            this.var_1341 = const_1623;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1341 > 0)
         {
            --this.var_1341;
         }
         if(this.var_1341 == 0)
         {
            if(this.var_295.length > 0)
            {
               super.setAnimation(this.var_295.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
