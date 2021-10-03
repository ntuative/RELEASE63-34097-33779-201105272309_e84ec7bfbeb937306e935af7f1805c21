package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_897:String = "";
      
      public static const const_389:int = 0;
      
      public static const const_553:int = 255;
      
      public static const const_845:Boolean = false;
      
      public static const const_505:int = 0;
      
      public static const const_566:int = 0;
      
      public static const const_426:int = 0;
      
      public static const const_1279:int = 1;
      
      public static const const_1166:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2221:String = "";
      
      private var var_1814:int = 0;
      
      private var var_2219:int = 255;
      
      private var var_2275:Boolean = false;
      
      private var var_2278:int = 0;
      
      private var var_2276:int = 0;
      
      private var var_2277:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2221 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2221;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1814 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1814;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2219 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2219;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2275 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2275;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2278 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2278;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2276 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2276;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2277 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2277;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
