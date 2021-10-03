package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_154:String = "ROE_MOUSE_CLICK";
      
      public static const const_178:String = "ROE_MOUSE_ENTER";
      
      public static const const_565:String = "ROE_MOUSE_MOVE";
      
      public static const const_177:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2203:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_625:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1769:String = "";
      
      private var var_2422:Boolean;
      
      private var var_2424:Boolean;
      
      private var var_2420:Boolean;
      
      private var var_2419:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1769 = param2;
         this.var_2422 = param5;
         this.var_2424 = param6;
         this.var_2420 = param7;
         this.var_2419 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1769;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2422;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2424;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2420;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2419;
      }
   }
}
