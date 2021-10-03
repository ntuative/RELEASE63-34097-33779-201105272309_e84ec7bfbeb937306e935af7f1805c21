package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var var_2765:String = "";
      
      private var var_100:Vector3d = null;
      
      private var var_473:Vector3d = null;
      
      private var var_2764:int = 0;
      
      private var var_2549:String = null;
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         this._id = param1;
         this._category = param2;
         this.var_2765 = param3;
         this.var_100 = new Vector3d();
         this.var_100.assign(param4);
         this.var_473 = new Vector3d();
         this.var_473.assign(param5);
         this.var_2764 = param6;
         this.var_2549 = param7;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get operation() : String
      {
         return this.var_2765;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_100;
      }
      
      public function get dir() : Vector3d
      {
         return this.var_473;
      }
      
      public function get typeId() : int
      {
         return this.var_2764;
      }
      
      public function get instanceData() : String
      {
         return this.var_2549;
      }
      
      public function dispose() : void
      {
         this.var_100 = null;
         this.var_473 = null;
      }
   }
}
