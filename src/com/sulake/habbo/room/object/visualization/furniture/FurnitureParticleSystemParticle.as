package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_172:Number;
      
      private var var_171:Number;
      
      private var var_1925:Number;
      
      private var var_1926:Number;
      
      private var var_1928:Number;
      
      private var var_1241:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_535:int = 0;
      
      private var var_1004:int;
      
      private var var_2690:Boolean = false;
      
      private var var_1927:Boolean = false;
      
      private var var_1642:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1927;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_535;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_172 = param2;
         this.var_171 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1925 = this._x - this._direction.x * param6;
         this.var_1926 = this.var_172 - this._direction.y * param6;
         this.var_1928 = this.var_171 - this._direction.z * param6;
         this.var_535 = 0;
         this.var_1241 = false;
         this.var_1004 = param7;
         this.var_2690 = param8;
         this._frames = param9;
         this.var_1927 = param10;
         this._alphaMultiplier = 1;
         this.var_1642 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_535;
         if(this.var_535 == this.var_1004)
         {
            this.ignite();
         }
         if(this.var_1927)
         {
            if(this.var_535 / this.var_1004 > this.var_1642)
            {
               this._alphaMultiplier = (this.var_1004 - this.var_535) / (this.var_1004 * (1 - this.var_1642));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_535 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2690;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_535 <= this.var_1004;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_172 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_171 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1925;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1241 = true;
         this.var_1925 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1926;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1241 = true;
         this.var_1926 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1928;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1241 = true;
         this.var_1928 = param1;
      }
      
      public function get method_18() : Boolean
      {
         return this.var_1241;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_172,this.var_171].toString();
      }
   }
}
