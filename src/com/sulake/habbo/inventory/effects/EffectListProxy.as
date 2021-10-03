package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_72:EffectsModel;
      
      private var var_145:int;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         this.var_72 = param1;
         this.var_145 = param2;
      }
      
      public function dispose() : void
      {
         this.var_72 = null;
      }
      
      public function getDrawableList() : Array
      {
         return this.var_72.getEffects(this.var_145);
      }
   }
}
