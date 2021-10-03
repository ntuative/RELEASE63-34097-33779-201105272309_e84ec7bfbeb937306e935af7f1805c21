package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3023:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_88 = param1.desktop;
         var_67 = param1.var_1358 as WindowController;
         var_176 = param1.var_1355 as WindowController;
         var_162 = param1.renderer;
         var_891 = param1.var_1359;
         param2.begin();
         param2.end();
         param1.desktop = var_88;
         param1.var_1358 = var_67;
         param1.var_1355 = var_176;
         param1.renderer = var_162;
         param1.var_1359 = var_891;
      }
   }
}
