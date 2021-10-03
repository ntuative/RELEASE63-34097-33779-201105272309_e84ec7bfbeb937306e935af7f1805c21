package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1928:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1629:String;
      
      private var var_1957:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1629 = param2;
         this.var_1957 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1629;
      }
      
      public function get classId() : int
      {
         return this.var_1957;
      }
   }
}
