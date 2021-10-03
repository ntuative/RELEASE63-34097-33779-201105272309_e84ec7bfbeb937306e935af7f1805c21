package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_474:RoomObjectLocationCacheItem = null;
      
      private var var_215:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_474 = new RoomObjectLocationCacheItem(param1);
         this.var_215 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_474;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_215;
      }
      
      public function dispose() : void
      {
         if(this.var_474 != null)
         {
            this.var_474.dispose();
            this.var_474 = null;
         }
         if(this.var_215 != null)
         {
            this.var_215.dispose();
            this.var_215 = null;
         }
      }
   }
}
