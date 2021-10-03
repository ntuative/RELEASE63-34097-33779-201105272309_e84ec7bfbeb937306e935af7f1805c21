package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_394:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_482:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1243:int;
      
      private var var_2863:Boolean;
      
      private var var_531:Boolean;
      
      private var var_1669:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1243 = param2;
         this.var_2863 = param3;
         this.var_531 = param4;
         this.var_1669 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1243;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2863;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_531;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1669;
      }
   }
}
