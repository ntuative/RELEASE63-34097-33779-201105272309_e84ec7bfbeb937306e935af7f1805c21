package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarEffectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_191:int;
      
      private var var_2499:int;
      
      public function RoomObjectAvatarEffectUpdateMessage(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_191 = param1;
         this.var_2499 = param2;
      }
      
      public function get effect() : int
      {
         return this.var_191;
      }
      
      public function get delayMilliSeconds() : int
      {
         return this.var_2499;
      }
   }
}
