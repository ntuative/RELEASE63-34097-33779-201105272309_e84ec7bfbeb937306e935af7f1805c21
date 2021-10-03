package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1120:int = 0;
       
      
      private var _id:int;
      
      private var _type:String = "";
      
      private var var_100:Vector3d;
      
      private var var_473:Vector3d;
      
      private var var_1831:Vector3d;
      
      private var var_1830:Vector3d;
      
      private var var_635:Array;
      
      private var var_72:RoomObjectModel;
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_634:IRoomObjectEventHandler;
      
      private var _updateID:int;
      
      private var var_2223:int = 0;
      
      public function RoomObject(param1:int, param2:int, param3:String)
      {
         super();
         this._id = param1;
         this.var_100 = new Vector3d();
         this.var_473 = new Vector3d();
         this.var_1831 = new Vector3d();
         this.var_1830 = new Vector3d();
         this.var_635 = new Array(param2);
         var _loc4_:Number = param2 - 1;
         while(_loc4_ >= 0)
         {
            this.var_635[_loc4_] = 0;
            _loc4_--;
         }
         this._type = param3;
         this.var_72 = new RoomObjectModel();
         this._visualization = null;
         this.var_634 = null;
         this._updateID = 0;
         this.var_2223 = var_1120++;
      }
      
      public function dispose() : void
      {
         this.var_100 = null;
         this.var_473 = null;
         if(this.var_72 != null)
         {
            this.var_72.dispose();
            this.var_72 = null;
         }
         this.var_635 = null;
         this.setVisualization(null);
         this.setEventHandler(null);
      }
      
      public function getId() : int
      {
         return this._id;
      }
      
      public function getType() : String
      {
         return this._type;
      }
      
      public function getInstanceId() : int
      {
         return this.var_2223;
      }
      
      public function getLocation() : IVector3d
      {
         this.var_1831.assign(this.var_100);
         return this.var_1831;
      }
      
      public function getDirection() : IVector3d
      {
         this.var_1830.assign(this.var_473);
         return this.var_1830;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return this.var_72;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return this.var_72;
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.var_635.length)
         {
            return this.var_635[param1];
         }
         return -1;
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return this._visualization;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_100.x != param1.x || this.var_100.y != param1.y || this.var_100.z != param1.z)
         {
            this.var_100.x = param1.x;
            this.var_100.y = param1.y;
            this.var_100.z = param1.z;
            ++this._updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_473.x != param1.x || this.var_473.y != param1.y || this.var_473.z != param1.z)
         {
            this.var_473.x = (param1.x % 360 + 360) % 360;
            this.var_473.y = (param1.y % 360 + 360) % 360;
            this.var_473.z = (param1.z % 360 + 360) % 360;
            ++this._updateID;
         }
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < this.var_635.length)
         {
            if(this.var_635[param2] != param1)
            {
               this.var_635[param2] = param1;
               ++this._updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != this._visualization)
         {
            if(this._visualization != null)
            {
               this._visualization.dispose();
            }
            this._visualization = param1;
            if(this._visualization != null)
            {
               this._visualization.object = this;
            }
         }
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == this.var_634)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = this.var_634;
         if(_loc2_ != null)
         {
            this.var_634 = null;
            _loc2_.object = null;
         }
         this.var_634 = param1;
         if(this.var_634 != null)
         {
            this.var_634.object = this;
         }
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return this.var_634;
      }
      
      public function getUpdateID() : int
      {
         return this._updateID;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return this.getEventHandler();
      }
   }
}
