package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2364:int;
      
      private var var_2365:int;
      
      private var var_2361:int;
      
      private var _dayOffsets:Array;
      
      private var var_1997:Array;
      
      private var var_1996:Array;
      
      private var var_2362:int;
      
      private var var_2363:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2364;
      }
      
      public function get offerCount() : int
      {
         return this.var_2365;
      }
      
      public function get historyLength() : int
      {
         return this.var_2361;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1997;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1996;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2362;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2363;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2364 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2365 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2361 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1997 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1996 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2362 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2363 = param1;
      }
   }
}
