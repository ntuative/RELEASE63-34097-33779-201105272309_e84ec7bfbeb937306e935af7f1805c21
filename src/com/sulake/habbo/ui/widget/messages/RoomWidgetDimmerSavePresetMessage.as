package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_960:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2274:int;
      
      private var var_2273:int;
      
      private var _color:uint;
      
      private var var_1126:int;
      
      private var var_2272:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_960);
         this.var_2274 = param1;
         this.var_2273 = param2;
         this._color = param3;
         this.var_1126 = param4;
         this.var_2272 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2274;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2273;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1126;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2272;
      }
   }
}
