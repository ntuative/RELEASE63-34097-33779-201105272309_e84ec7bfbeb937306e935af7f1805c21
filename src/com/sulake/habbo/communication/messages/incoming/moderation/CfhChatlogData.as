package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1977:int;
      
      private var var_2782:int;
      
      private var var_1634:int;
      
      private var var_2232:int;
      
      private var var_124:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1977 = param1.readInteger();
         this.var_2782 = param1.readInteger();
         this.var_1634 = param1.readInteger();
         this.var_2232 = param1.readInteger();
         this.var_124 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1977);
      }
      
      public function get callId() : int
      {
         return this.var_1977;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2782;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1634;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2232;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_124;
      }
   }
}
