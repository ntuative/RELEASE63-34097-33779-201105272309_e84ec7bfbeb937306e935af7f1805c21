package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1784:int = 0;
      
      private var var_1785:int = 0;
      
      private var var_1805:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1784;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1785;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1805;
      }
      
      public function flush() : Boolean
      {
         this.var_1784 = 0;
         this.var_1785 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1784 = param1.readInteger();
         this.var_1785 = param1.readInteger();
         this.var_1805 = param1.readInteger();
         return true;
      }
   }
}
