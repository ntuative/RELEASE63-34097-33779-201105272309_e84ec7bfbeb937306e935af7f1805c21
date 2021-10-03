package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1161:Sound = null;
      
      private var var_414:SoundChannel = null;
      
      private var var_933:Number;
      
      private var _complete:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1161 = param1;
         this.var_1161.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_933 = 1;
         this._complete = false;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         this._complete = false;
         this.var_414 = this.var_1161.play(0);
         this.volume = this.var_933;
         return true;
      }
      
      public function stop() : Boolean
      {
         this.var_414.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_933;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_933 = param1;
         if(this.var_414 != null)
         {
            this.var_414.soundTransform = new SoundTransform(this.var_933);
         }
      }
      
      public function get position() : Number
      {
         return this.var_414.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1161.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1161.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this._complete;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
      }
      
      public function get fadeInSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this._complete = true;
      }
   }
}
