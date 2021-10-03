package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1352:int;
      
      private var _furniId:int;
      
      private var var_2556:int;
      
      private var var_2177:String;
      
      private var var_1958:int;
      
      private var var_407:int;
      
      private var var_2555:int = -1;
      
      private var var_2364:int;
      
      private var var_1959:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1352 = param1;
         this._furniId = param2;
         this.var_2556 = param3;
         this.var_2177 = param4;
         this.var_1958 = param5;
         this.var_407 = param6;
         this.var_2555 = param7;
         this.var_2364 = param8;
         this.var_1959 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1352;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2556;
      }
      
      public function get stuffData() : String
      {
         return this.var_2177;
      }
      
      public function get price() : int
      {
         return this.var_1958;
      }
      
      public function get status() : int
      {
         return this.var_407;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2555;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2364;
      }
      
      public function get offerCount() : int
      {
         return this.var_1959;
      }
   }
}
