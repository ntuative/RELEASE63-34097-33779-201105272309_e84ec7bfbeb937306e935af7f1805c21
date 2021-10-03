package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   import flash.events.Event;
   
   public class RoomObjectRoomAdEvent extends RoomObjectEvent
   {
      
      public static const const_176:String = "RORAE_ROOM_AD_LOAD_IMAGE";
      
      public static const const_193:String = "RORAE_ROOM_AD_FURNI_CLICK";
      
      public static const const_589:String = "RORAE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_349:String = "RORAE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_356:String = "RORAE_ROOM_AD_TOOLTIP_HIDE";
       
      
      private var _imageUrl:String = "";
      
      private var var_1309:String = "";
      
      public function RoomObjectRoomAdEvent(param1:String, param2:int, param3:String, param4:String = "", param5:String = "", param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         this._imageUrl = param4;
         this.var_1309 = param5;
      }
      
      public function get clickUrl() : String
      {
         return this.var_1309;
      }
      
      public function get imageUrl() : String
      {
         return this._imageUrl;
      }
      
      override public function clone() : Event
      {
         return new RoomObjectRoomAdEvent(type,objectId,objectType,this.imageUrl,this.clickUrl,bubbles,cancelable);
      }
   }
}