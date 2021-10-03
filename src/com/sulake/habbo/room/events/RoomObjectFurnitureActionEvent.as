package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_615:String = "ROFCAE_DICE_OFF";
      
      public static const const_557:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_618:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_554:String = "ROFCAE_STICKIE";
      
      public static const const_541:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_586:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_466:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_571:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_593:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_478:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_516:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_536:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_477:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_590:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_598:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_248:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_357:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
