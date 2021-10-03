package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_869:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_318:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_869);
         this.var_318 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_318;
      }
   }
}
