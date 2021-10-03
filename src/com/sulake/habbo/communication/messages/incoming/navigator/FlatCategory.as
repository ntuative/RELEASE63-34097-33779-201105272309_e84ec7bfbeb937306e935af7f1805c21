package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1956:int;
      
      private var var_2259:String;
      
      private var var_303:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1956 = param1.readInteger();
         this.var_2259 = param1.readString();
         this.var_303 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1956;
      }
      
      public function get nodeName() : String
      {
         return this.var_2259;
      }
      
      public function get visible() : Boolean
      {
         return this.var_303;
      }
   }
}
