package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2981:uint;
      
      private var var_153:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_278:IWindowContext;
      
      private var var_1194:IMouseDraggingService;
      
      private var var_1197:IMouseScalingService;
      
      private var var_1198:IMouseListenerService;
      
      private var var_1196:IFocusManagerService;
      
      private var var_1193:IToolTipAgentService;
      
      private var var_1195:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2981 = 0;
         this.var_153 = param2;
         this.var_278 = param1;
         this.var_1194 = new WindowMouseDragger(param2);
         this.var_1197 = new WindowMouseScaler(param2);
         this.var_1198 = new WindowMouseListener(param2);
         this.var_1196 = new FocusManager(param2);
         this.var_1193 = new WindowToolTipAgent(param2);
         this.var_1195 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1194 != null)
         {
            this.var_1194.dispose();
            this.var_1194 = null;
         }
         if(this.var_1197 != null)
         {
            this.var_1197.dispose();
            this.var_1197 = null;
         }
         if(this.var_1198 != null)
         {
            this.var_1198.dispose();
            this.var_1198 = null;
         }
         if(this.var_1196 != null)
         {
            this.var_1196.dispose();
            this.var_1196 = null;
         }
         if(this.var_1193 != null)
         {
            this.var_1193.dispose();
            this.var_1193 = null;
         }
         if(this.var_1195 != null)
         {
            this.var_1195.dispose();
            this.var_1195 = null;
         }
         this.var_153 = null;
         this.var_278 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1194;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1197;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1198;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1196;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1193;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1195;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
