package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1383:IHabboTracking;
      
      private var var_1872:Boolean = false;
      
      private var var_2517:int = 0;
      
      private var var_1817:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1383 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1383 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1872 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2517 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1872)
         {
            return;
         }
         ++this.var_1817;
         if(this.var_1817 <= this.var_2517)
         {
            this.var_1383.track("toolbar",param1);
         }
      }
   }
}
