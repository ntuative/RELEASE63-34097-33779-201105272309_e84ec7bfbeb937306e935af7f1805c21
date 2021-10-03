package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1120:int = 0;
       
      
      private var var_454:BitmapData = null;
      
      private var var_2224:String = "";
      
      private var var_303:Boolean = true;
      
      private var var_2221:String = "";
      
      private var var_2219:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1667:String;
      
      private var var_1463:Boolean = false;
      
      private var var_1462:Boolean = false;
      
      private var _offset:Point;
      
      private var var_272:int = 0;
      
      private var _height:int = 0;
      
      private var var_1329:Number = 0;
      
      private var var_2218:Boolean = false;
      
      private var var_2217:Boolean = true;
      
      private var var_2222:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2223:int = 0;
      
      private var var_2220:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_1667 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2223 = var_1120++;
      }
      
      public function dispose() : void
      {
         this.var_454 = null;
         this.var_272 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_454;
      }
      
      public function get assetName() : String
      {
         return this.var_2224;
      }
      
      public function get visible() : Boolean
      {
         return this.var_303;
      }
      
      public function get tag() : String
      {
         return this.var_2221;
      }
      
      public function get alpha() : int
      {
         return this.var_2219;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1667;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1462;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1463;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_272;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1329;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2218;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2217;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2222;
      }
      
      public function get instanceId() : int
      {
         return this.var_2223;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2220;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_272 = param1.width;
            this._height = param1.height;
         }
         this.var_454 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2224 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_303 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2221 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2219 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1667 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2220 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1463 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1462 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1329 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2218 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2217 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2222 = param1;
         ++this._updateID;
      }
   }
}
