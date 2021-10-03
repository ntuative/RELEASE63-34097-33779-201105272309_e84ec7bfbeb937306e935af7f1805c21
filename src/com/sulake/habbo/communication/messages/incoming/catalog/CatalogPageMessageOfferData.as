package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1352:int;
      
      private var var_1806:String;
      
      private var var_1183:int;
      
      private var var_1181:int;
      
      private var var_1805:int;
      
      private var var_1272:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1352 = param1.readInteger();
         this.var_1806 = param1.readString();
         this.var_1183 = param1.readInteger();
         this.var_1181 = param1.readInteger();
         this.var_1805 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1272 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1272.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1352;
      }
      
      public function get localizationId() : String
      {
         return this.var_1806;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1183;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1181;
      }
      
      public function get products() : Array
      {
         return this.var_1272;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1805;
      }
   }
}
