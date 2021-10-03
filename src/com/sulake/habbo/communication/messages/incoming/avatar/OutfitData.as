package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2053:int;
      
      private var var_2265:String;
      
      private var var_1056:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2053 = param1.readInteger();
         this.var_2265 = param1.readString();
         this.var_1056 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2053;
      }
      
      public function get figureString() : String
      {
         return this.var_2265;
      }
      
      public function get gender() : String
      {
         return this.var_1056;
      }
   }
}
