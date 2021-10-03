package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_617:int = -1;
      
      public static const const_1256:int = -1;
      
      private static const const_1395:int = 3000;
      
      private static const POOL:Array = [];
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_172:int = 0;
      
      private var var_2295:int = 1;
      
      private var var_924:int = 1;
      
      private var var_1700:int = 1;
      
      private var var_2294:int = -1;
      
      private var var_2297:int = 0;
      
      private var var_2296:Boolean = false;
      
      private var _isRecycled:Boolean = false;
      
      public function AnimationFrame()
      {
         super();
      }
      
      public static function allocate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0) : AnimationFrame
      {
         var _loc9_:AnimationFrame = false ? POOL.pop() : new AnimationFrame();
         _loc9_._isRecycled = false;
         _loc9_._id = param1;
         _loc9_._x = param2;
         _loc9_.var_172 = param3;
         _loc9_.var_2296 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         _loc9_.var_2295 = param4;
         if(param5 < 0)
         {
            param5 = const_617;
         }
         _loc9_.var_924 = param5;
         _loc9_.var_1700 = param5;
         if(param7 >= 0)
         {
            _loc9_.var_2294 = param7;
            _loc9_.var_2297 = param8;
         }
         return _loc9_;
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_172;
      }
      
      public function get repeats() : int
      {
         return this.var_2295;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_924;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2296;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_924 < 0)
         {
            return const_617;
         }
         return this.var_1700;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_924 > 0 && param1 > this.var_924)
         {
            param1 = this.var_924;
         }
         this.var_1700 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2294;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2297;
      }
      
      public function recycle() : void
      {
         if(!this._isRecycled)
         {
            this._isRecycled = true;
            if(POOL.length < const_1395)
            {
               POOL.push(this);
            }
         }
      }
   }
}
