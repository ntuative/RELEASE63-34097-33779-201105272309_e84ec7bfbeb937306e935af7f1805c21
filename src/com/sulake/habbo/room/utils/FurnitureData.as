package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class FurnitureData
   {
       
      
      private var _id:int = 0;
      
      private var var_2764:int = 0;
      
      private var _type:String = null;
      
      private var var_100:Vector3d;
      
      private var var_473:Vector3d;
      
      private var _state:int = 0;
      
      private var _data:String = null;
      
      private var var_1558:Number = NaN;
      
      private var var_2493:int = -1;
      
      private var var_2198:Boolean = false;
      
      public function FurnitureData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int, param7:String, param8:Number = NaN, param9:int = -1, param10:Boolean = false)
      {
         this.var_100 = new Vector3d();
         this.var_473 = new Vector3d();
         super();
         this._id = param1;
         this.var_2764 = param2;
         this._type = param3;
         this.var_100.assign(param4);
         this.var_473.assign(param5);
         this._state = param6;
         this._data = param7;
         this.var_1558 = param8;
         this.var_2493 = param9;
         this.var_2198 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get typeId() : int
      {
         return this.var_2764;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get loc() : IVector3d
      {
         return this.var_100;
      }
      
      public function get dir() : IVector3d
      {
         return this.var_473;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get extra() : Number
      {
         return this.var_1558;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2493;
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2198;
      }
   }
}