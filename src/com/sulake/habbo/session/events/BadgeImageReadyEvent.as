package com.sulake.habbo.session.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class BadgeImageReadyEvent extends Event
   {
      
      public static const const_114:String = "BIRE_BADGE_IMAGE_READY";
       
      
      private var var_318:String;
      
      private var var_47:BitmapData;
      
      public function BadgeImageReadyEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_114,param3,param4);
         this.var_318 = param1;
         this.var_47 = param2;
      }
      
      public function get badgeId() : String
      {
         return this.var_318;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_47;
      }
   }
}
