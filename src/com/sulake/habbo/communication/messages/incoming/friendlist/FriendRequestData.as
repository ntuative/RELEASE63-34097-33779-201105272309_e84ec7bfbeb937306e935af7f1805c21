package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1233:int;
      
      private var var_2508:String;
      
      private var var_2509:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1233 = param1.readInteger();
         this.var_2508 = param1.readString();
         this.var_2509 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1233;
      }
      
      public function get requesterName() : String
      {
         return this.var_2508;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2509;
      }
   }
}
