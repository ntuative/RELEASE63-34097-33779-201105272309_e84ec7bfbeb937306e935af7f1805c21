package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1002:int = 20;
      
      private static const const_642:int = 9;
      
      private static const const_1370:int = -1;
       
      
      private var var_295:Array;
      
      private var var_772:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_295 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_772)
            {
               this.var_772 = true;
               this.var_295 = new Array();
               this.var_295.push(const_1370);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_772)
            {
               this.var_772 = false;
               this.var_295 = new Array();
               this.var_295.push(const_1002);
               this.var_295.push(const_642 + param1);
               this.var_295.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
