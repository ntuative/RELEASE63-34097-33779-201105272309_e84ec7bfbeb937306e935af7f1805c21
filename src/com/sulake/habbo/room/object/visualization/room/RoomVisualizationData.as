package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_546:WallRasterizer;
      
      private var var_547:FloorRasterizer;
      
      private var var_824:WallAdRasterizer;
      
      private var var_545:LandscapeRasterizer;
      
      private var var_823:PlaneMaskManager;
      
      private var var_854:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_546 = new WallRasterizer();
         this.var_547 = new FloorRasterizer();
         this.var_824 = new WallAdRasterizer();
         this.var_545 = new LandscapeRasterizer();
         this.var_823 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_854;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_547;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_546;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_824;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_545;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_823;
      }
      
      public function dispose() : void
      {
         if(this.var_546 != null)
         {
            this.var_546.dispose();
            this.var_546 = null;
         }
         if(this.var_547 != null)
         {
            this.var_547.dispose();
            this.var_547 = null;
         }
         if(this.var_824 != null)
         {
            this.var_824.dispose();
            this.var_824 = null;
         }
         if(this.var_545 != null)
         {
            this.var_545.dispose();
            this.var_545 = null;
         }
         if(this.var_823 != null)
         {
            this.var_823.dispose();
            this.var_823 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_546 != null)
         {
            this.var_546.clearCache();
         }
         if(this.var_547 != null)
         {
            this.var_547.clearCache();
         }
         if(this.var_545 != null)
         {
            this.var_545.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_546.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_547.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_824.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_545.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_823.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_854)
         {
            return;
         }
         this.var_546.initializeAssetCollection(param1);
         this.var_547.initializeAssetCollection(param1);
         this.var_824.initializeAssetCollection(param1);
         this.var_545.initializeAssetCollection(param1);
         this.var_823.initializeAssetCollection(param1);
         this.var_854 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
