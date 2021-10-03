package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1002:int = 20;
      
      private static const const_642:int = 10;
      
      private static const const_1371:int = 31;
      
      private static const const_1370:int = 32;
      
      private static const const_641:int = 30;
       
      
      private var var_295:Array;
      
      private var var_772:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_295 = new Array();
         super();
         super.setAnimation(const_641);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_772)
            {
               this.var_772 = true;
               this.var_295 = new Array();
               this.var_295.push(const_1371);
               this.var_295.push(const_1370);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_642)
         {
            if(this.var_772)
            {
               this.var_772 = false;
               this.var_295 = new Array();
               if(direction == 2)
               {
                  this.var_295.push(const_1002 + 5 - param1);
                  this.var_295.push(const_642 + 5 - param1);
               }
               else
               {
                  this.var_295.push(const_1002 + param1);
                  this.var_295.push(const_642 + param1);
               }
               this.var_295.push(const_641);
               return;
            }
            super.setAnimation(const_641);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
