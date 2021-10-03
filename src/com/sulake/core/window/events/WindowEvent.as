package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1778:String = "WE_DESTROY";
      
      public static const const_315:String = "WE_DESTROYED";
      
      public static const const_1860:String = "WE_OPEN";
      
      public static const const_1753:String = "WE_OPENED";
      
      public static const const_1697:String = "WE_CLOSE";
      
      public static const const_1865:String = "WE_CLOSED";
      
      public static const const_1645:String = "WE_FOCUS";
      
      public static const const_359:String = "WE_FOCUSED";
      
      public static const const_1859:String = "WE_UNFOCUS";
      
      public static const const_1832:String = "WE_UNFOCUSED";
      
      public static const const_1686:String = "WE_ACTIVATE";
      
      public static const const_561:String = "WE_ACTIVATED";
      
      public static const const_1850:String = "WE_DEACTIVATE";
      
      public static const const_542:String = "WE_DEACTIVATED";
      
      public static const const_308:String = "WE_SELECT";
      
      public static const const_49:String = "WE_SELECTED";
      
      public static const const_604:String = "WE_UNSELECT";
      
      public static const const_583:String = "WE_UNSELECTED";
      
      public static const const_1909:String = "WE_LOCK";
      
      public static const const_1671:String = "WE_LOCKED";
      
      public static const const_1728:String = "WE_UNLOCK";
      
      public static const const_1704:String = "WE_UNLOCKED";
      
      public static const const_906:String = "WE_ENABLE";
      
      public static const const_266:String = "WE_ENABLED";
      
      public static const const_846:String = "WE_DISABLE";
      
      public static const const_253:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_422:String = "WE_RELOCATED";
      
      public static const const_1252:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1693:String = "WE_MINIMIZE";
      
      public static const const_1695:String = "WE_MINIMIZED";
      
      public static const const_1816:String = "WE_MAXIMIZE";
      
      public static const const_1692:String = "WE_MAXIMIZED";
      
      public static const const_1831:String = "WE_RESTORE";
      
      public static const const_1660:String = "WE_RESTORED";
      
      public static const const_338:String = "WE_CHILD_ADDED";
      
      public static const const_436:String = "WE_CHILD_REMOVED";
      
      public static const const_216:String = "WE_CHILD_RELOCATED";
      
      public static const const_129:String = "WE_CHILD_RESIZED";
      
      public static const const_324:String = "WE_CHILD_ACTIVATED";
      
      public static const const_486:String = "WE_PARENT_ADDED";
      
      public static const const_1917:String = "WE_PARENT_REMOVED";
      
      public static const const_1736:String = "WE_PARENT_RELOCATED";
      
      public static const const_767:String = "WE_PARENT_RESIZED";
      
      public static const const_1128:String = "WE_PARENT_ACTIVATED";
      
      public static const const_181:String = "WE_OK";
      
      public static const const_637:String = "WE_CANCEL";
      
      public static const const_106:String = "WE_CHANGE";
      
      public static const const_521:String = "WE_SCROLL";
      
      public static const const_112:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_716:IWindow;
      
      protected var var_1109:Boolean;
      
      protected var var_490:Boolean;
      
      protected var var_482:Boolean;
      
      protected var var_715:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_716 = param3;
         _loc5_.var_490 = param4;
         _loc5_.var_482 = false;
         _loc5_.var_715 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_716;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_490;
      }
      
      public function recycle() : void
      {
         if(this.var_482)
         {
            throw new Error("Event already recycled!");
         }
         this.var_716 = null;
         this._window = null;
         this.var_482 = true;
         this.var_1109 = false;
         this.var_715.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1109;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1109 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1109;
      }
      
      public function stopPropagation() : void
      {
         this.var_1109 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1109 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_490 + " window: " + this._window + " }";
      }
   }
}
