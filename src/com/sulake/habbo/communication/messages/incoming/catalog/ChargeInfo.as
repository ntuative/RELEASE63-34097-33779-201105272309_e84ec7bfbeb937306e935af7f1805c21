package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2286:int;
      
      private var var_2510:int;
      
      private var var_1183:int;
      
      private var var_1181:int;
      
      private var var_1805:int;
      
      private var var_2511:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2286 = param1.readInteger();
         this.var_2510 = param1.readInteger();
         this.var_1183 = param1.readInteger();
         this.var_1181 = param1.readInteger();
         this.var_1805 = param1.readInteger();
         this.var_2511 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2286;
      }
      
      public function get charges() : int
      {
         return this.var_2510;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1183;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1181;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2511;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1805;
      }
   }
}
