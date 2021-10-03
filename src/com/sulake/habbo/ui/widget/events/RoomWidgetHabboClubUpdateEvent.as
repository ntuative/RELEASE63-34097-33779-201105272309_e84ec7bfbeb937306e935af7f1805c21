package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_242:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2714:int = 0;
      
      private var var_2715:int = 0;
      
      private var var_2716:int = 0;
      
      private var var_2717:Boolean = false;
      
      private var var_2257:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_242,param6,param7);
         this.var_2714 = param1;
         this.var_2715 = param2;
         this.var_2716 = param3;
         this.var_2717 = param4;
         this.var_2257 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2714;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2715;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2716;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2717;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2257;
      }
   }
}
