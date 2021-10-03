package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1769:String = "";
      
      private var var_1749:String = "";
      
      private var var_2421:String = "";
      
      private var var_2418:Number = 0;
      
      private var var_2423:Number = 0;
      
      private var var_2200:Number = 0;
      
      private var var_2202:Number = 0;
      
      private var var_2424:Boolean = false;
      
      private var var_2422:Boolean = false;
      
      private var var_2420:Boolean = false;
      
      private var var_2419:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1769 = param2;
         this.var_1749 = param3;
         this.var_2421 = param4;
         this.var_2418 = param5;
         this.var_2423 = param6;
         this.var_2200 = param7;
         this.var_2202 = param8;
         this.var_2424 = param9;
         this.var_2422 = param10;
         this.var_2420 = param11;
         this.var_2419 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1769;
      }
      
      public function get canvasId() : String
      {
         return this.var_1749;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2421;
      }
      
      public function get screenX() : Number
      {
         return this.var_2418;
      }
      
      public function get screenY() : Number
      {
         return this.var_2423;
      }
      
      public function get localX() : Number
      {
         return this.var_2200;
      }
      
      public function get localY() : Number
      {
         return this.var_2202;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2424;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2422;
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
