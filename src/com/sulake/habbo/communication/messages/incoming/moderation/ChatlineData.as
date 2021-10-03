package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2271:int;
      
      private var var_2270:int;
      
      private var var_2268:int;
      
      private var var_2269:String;
      
      private var var_1951:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2271 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         this.var_2268 = param1.readInteger();
         this.var_2269 = param1.readString();
         this.var_1951 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2271;
      }
      
      public function get minute() : int
      {
         return this.var_2270;
      }
      
      public function get chatterId() : int
      {
         return this.var_2268;
      }
      
      public function get chatterName() : String
      {
         return this.var_2269;
      }
      
      public function get msg() : String
      {
         return this.var_1951;
      }
   }
}
