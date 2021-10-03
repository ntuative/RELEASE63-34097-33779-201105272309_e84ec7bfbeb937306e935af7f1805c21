package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_222:int = 0;
      
      private var var_1811:int = 0;
      
      private var var_1810:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_222;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1811;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1810;
      }
      
      public function flush() : Boolean
      {
         this.var_222 = 0;
         this.var_1811 = 0;
         this.var_1810 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_222 = param1.readInteger();
         this.var_1811 = param1.readInteger();
         this.var_1810 = param1.readString();
         return true;
      }
   }
}
