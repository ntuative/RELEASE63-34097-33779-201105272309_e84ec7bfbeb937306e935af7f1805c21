package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_822:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1122:String = "inventory_effects";
      
      public static const const_1312:String = "inventory_badges";
      
      public static const const_1842:String = "inventory_clothes";
      
      public static const const_1884:String = "inventory_furniture";
       
      
      private var var_2621:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_822);
         this.var_2621 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2621;
      }
   }
}
