package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1689:int = 1;
      
      public static const const_2010:int = 2;
      
      public static const const_1939:int = 3;
      
      public static const const_1742:int = 4;
       
      
      private var var_1436:int = 0;
      
      private var var_1435:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1436 = 0;
         this.var_1435 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1436 = param1.readInteger();
         if(this.var_1436 == 3)
         {
            this.var_1435 = param1.readString();
         }
         else
         {
            this.var_1435 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1436;
      }
      
      public function get parameter() : String
      {
         return this.var_1435;
      }
   }
}
