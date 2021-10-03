package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_533:String = "RWUAM_WHISPER_USER";
      
      public static const const_573:String = "RWUAM_IGNORE_USER";
      
      public static const const_522:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_431:String = "RWUAM_KICK_USER";
      
      public static const const_622:String = "RWUAM_BAN_USER";
      
      public static const const_594:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_517:String = "RWUAM_RESPECT_USER";
      
      public static const const_592:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_500:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_559:String = "RWUAM_START_TRADING";
      
      public static const const_746:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_499:String = "RWUAM_KICK_BOT";
      
      public static const const_567:String = "RWUAM_REPORT";
      
      public static const const_475:String = "RWUAM_PICKUP_PET";
      
      public static const const_1900:String = "RWUAM_TRAIN_PET";
      
      public static const const_496:String = " RWUAM_RESPECT_PET";
      
      public static const const_430:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_558:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
