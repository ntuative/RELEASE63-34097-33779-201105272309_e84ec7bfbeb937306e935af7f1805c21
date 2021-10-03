package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_424:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1329:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1159:String = "RWOCM_PIXELS";
      
      public static const const_1173:String = "RWOCM_CREDITS";
       
      
      private var var_2575:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_424);
         this.var_2575 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2575;
      }
   }
}
