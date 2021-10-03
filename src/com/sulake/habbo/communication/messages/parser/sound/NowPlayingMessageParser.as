package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_2087:int;
      
      private var _currentPosition:int;
      
      private var var_2086:int;
      
      private var var_2084:int;
      
      private var var_2085:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_2087;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_2086;
      }
      
      public function get nextPosition() : int
      {
         return this.var_2084;
      }
      
      public function get syncCount() : int
      {
         return this.var_2085;
      }
      
      public function flush() : Boolean
      {
         this.var_2087 = -1;
         this._currentPosition = -1;
         this.var_2086 = -1;
         this.var_2084 = -1;
         this.var_2085 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2087 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_2086 = param1.readInteger();
         this.var_2084 = param1.readInteger();
         this.var_2085 = param1.readInteger();
         return true;
      }
   }
}
