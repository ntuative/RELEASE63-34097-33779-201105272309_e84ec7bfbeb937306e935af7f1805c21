package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1597:Boolean;
      
      private var var_2638:int;
      
      private var var_1898:int;
      
      private var var_1897:int;
      
      private var var_2635:int;
      
      private var var_2640:int;
      
      private var var_2637:int;
      
      private var var_2636:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1597;
      }
      
      public function get commission() : int
      {
         return this.var_2638;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1898;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1897;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2640;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2635;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2637;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2636;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1597 = param1.readBoolean();
         this.var_2638 = param1.readInteger();
         this.var_1898 = param1.readInteger();
         this.var_1897 = param1.readInteger();
         this.var_2640 = param1.readInteger();
         this.var_2635 = param1.readInteger();
         this.var_2637 = param1.readInteger();
         this.var_2636 = param1.readInteger();
         return true;
      }
   }
}
