package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FriendRoomEventMessageParser implements IMessageParser
   {
       
      
      private var var_2607:String;
      
      private var var_2606:String;
      
      private var _roomId:String;
      
      private var _message:String;
      
      public function FriendRoomEventMessageParser()
      {
         super();
      }
      
      public function get eventCreatorId() : String
      {
         return this.var_2607;
      }
      
      public function get eventCreatorName() : String
      {
         return this.var_2606;
      }
      
      public function get roomId() : String
      {
         return this._roomId;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2607 = param1.readString();
         this.var_2606 = param1.readString();
         this._roomId = param1.readString();
         this._message = param1.readString();
         return true;
      }
   }
}
