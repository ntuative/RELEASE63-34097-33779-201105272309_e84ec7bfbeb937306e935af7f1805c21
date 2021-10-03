package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1519:Number = 12;
       
      
      private var var_2586:int = -1;
      
      private var var_2585:int = -2;
      
      private var var_212:Vector3d = null;
      
      private var var_1217:Number = 0;
      
      private var var_1501:Number = 0;
      
      private var var_1863:Boolean = false;
      
      private var var_183:Vector3d = null;
      
      private var var_1866:Vector3d;
      
      private var var_2590:Boolean = false;
      
      private var var_2588:Boolean = false;
      
      private var var_2581:Boolean = false;
      
      private var var_2583:Boolean = false;
      
      private var var_2589:int = 0;
      
      private var var_2584:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2582:int = 0;
      
      private var var_2587:int = 0;
      
      private var var_1726:int = -1;
      
      private var var_1864:int = 0;
      
      private var var_1865:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1866 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_183;
      }
      
      public function get targetId() : int
      {
         return this.var_2586;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2585;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1866;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2590;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2588;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2581;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2583;
      }
      
      public function get screenWd() : int
      {
         return this.var_2589;
      }
      
      public function get screenHt() : int
      {
         return this.var_2584;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2582;
      }
      
      public function get roomHt() : int
      {
         return this.var_2587;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1726;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_212 != null && this.var_183 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2586 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1866.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2585 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2590 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2588 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2581 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2583 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2589 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2584 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1865 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2582 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2587 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1726 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_212 == null)
         {
            this.var_212 = new Vector3d();
         }
         if(this.var_212.x != param1.x || this.var_212.y != param1.y || this.var_212.z != param1.z)
         {
            this.var_212.assign(param1);
            this.var_1864 = 0;
            _loc2_ = Vector3d.dif(this.var_212,this.var_183);
            this.var_1217 = _loc2_.length;
            this.var_1863 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_212 = null;
         this.var_183 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_183 != null)
         {
            return;
         }
         this.var_183 = new Vector3d();
         this.var_183.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_183 == null)
         {
            this.var_183 = new Vector3d();
         }
         this.var_183.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_212 != null && this.var_183 != null)
         {
            ++this.var_1864;
            if(this.var_1865)
            {
               this.var_1865 = false;
               this.var_183 = this.var_212;
               this.var_212 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_212,this.var_183);
            if(_loc3_.length > this.var_1217)
            {
               this.var_1217 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_183 = this.var_212;
               this.var_212 = null;
               this.var_1501 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1217);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1217 / const_1519;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1863)
               {
                  if(_loc7_ < this.var_1501)
                  {
                     _loc7_ = this.var_1501;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1863 = false;
                  }
               }
               this.var_1501 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_183 = Vector3d.sum(this.var_183,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1726 = -1;
      }
   }
}
