package com.sulake.habbo.session
{
   import flash.display.BitmapData;
   
   public class BadgeInfo
   {
       
      
      private var var_47:BitmapData;
      
      private var var_2598:Boolean;
      
      public function BadgeInfo(param1:BitmapData, param2:Boolean)
      {
         super();
         this.var_47 = param1;
         this.var_2598 = param2;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function get placeHolder() : Boolean
      {
         return this.var_2598;
      }
   }
}