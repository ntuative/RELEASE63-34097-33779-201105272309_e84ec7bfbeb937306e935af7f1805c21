package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1664:int;
      
      private var var_1876:Number;
      
      private var var_2603:Number;
      
      private var var_2600:int;
      
      private var var_2602:Number;
      
      private var var_2601:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1664 = param1;
         this.var_1876 = param2;
         this.var_2603 = param3;
         this.var_2602 = param4;
         this.var_2601 = param5;
         this.var_2600 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1664;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1876 < 0)
         {
            return 0;
         }
         return this.var_1876 + (getTimer() - this.var_2600) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2603;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2602;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2601;
      }
   }
}
