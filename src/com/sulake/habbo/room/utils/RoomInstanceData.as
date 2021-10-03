package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_733:TileHeightMap = null;
      
      private var var_1141:LegacyWallGeometry = null;
      
      private var var_1140:RoomCamera = null;
      
      private var var_732:SelectedRoomObjectData = null;
      
      private var var_731:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_501:Map;
      
      private var var_500:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_501 = new Map();
         this.var_500 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1141 = new LegacyWallGeometry();
         this.var_1140 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_733;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_733 != null)
         {
            this.var_733.dispose();
         }
         this.var_733 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1141;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1140;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_732;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_732 != null)
         {
            this.var_732.dispose();
         }
         this.var_732 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_731;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_731 != null)
         {
            this.var_731.dispose();
         }
         this.var_731 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_733 != null)
         {
            this.var_733.dispose();
            this.var_733 = null;
         }
         if(this.var_1141 != null)
         {
            this.var_1141.dispose();
            this.var_1141 = null;
         }
         if(this.var_1140 != null)
         {
            this.var_1140.dispose();
            this.var_1140 = null;
         }
         if(this.var_732 != null)
         {
            this.var_732.dispose();
            this.var_732 = null;
         }
         if(this.var_731 != null)
         {
            this.var_731.dispose();
            this.var_731 = null;
         }
         if(this.var_501 != null)
         {
            this.var_501.dispose();
            this.var_501 = null;
         }
         if(this.var_500 != null)
         {
            this.var_500.dispose();
            this.var_500 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_501.remove(param1.id);
            this.var_501.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_501.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_501.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_501.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_500.remove(param1.id);
            this.var_500.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_500.length > 0)
         {
            return this.getWallItemDataWithId(this.var_500.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_500.remove(param1);
      }
   }
}
