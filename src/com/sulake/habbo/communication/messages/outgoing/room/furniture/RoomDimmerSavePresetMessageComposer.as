package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2274:int;
      
      private var var_2273:int;
      
      private var var_2591:String;
      
      private var var_2592:int;
      
      private var var_2593:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2274 = param1;
         this.var_2273 = param2;
         this.var_2591 = param3;
         this.var_2592 = param4;
         this.var_2593 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2274,this.var_2273,this.var_2591,this.var_2592,int(this.var_2593)];
      }
      
      public function dispose() : void
      {
      }
   }
}
