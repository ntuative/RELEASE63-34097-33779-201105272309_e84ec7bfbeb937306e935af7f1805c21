package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1873:String = "pricing_model_unknown";
      
      public static const const_418:String = "pricing_model_single";
      
      public static const const_427:String = "pricing_model_multi";
      
      public static const const_495:String = "pricing_model_bundle";
      
      public static const const_1914:String = "price_type_none";
      
      public static const const_889:String = "price_type_credits";
      
      public static const const_1185:String = "price_type_activitypoints";
      
      public static const const_1243:String = "price_type_credits_and_activitypoints";
       
      
      private var var_771:String;
      
      private var var_1182:String;
      
      private var var_1352:int;
      
      private var var_1806:String;
      
      private var var_1183:int;
      
      private var var_1181:int;
      
      private var var_1805:int;
      
      private var var_375:ICatalogPage;
      
      private var var_623:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2489:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this.var_1352 = param1;
         this.var_1806 = param2;
         this.var_1183 = param3;
         this.var_1181 = param4;
         this.var_1805 = param5;
         this.var_375 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_375;
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
      
      public function get activityPointType() : int
      {
         return this.var_1805;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_623;
      }
      
      public function get method_2() : String
      {
         return this.var_771;
      }
      
      public function get priceType() : String
      {
         return this.var_1182;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2489;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2489 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1352 = 0;
         this.var_1806 = "";
         this.var_1183 = 0;
         this.var_1181 = 0;
         this.var_1805 = 0;
         this.var_375 = null;
         if(this.var_623 != null)
         {
            this.var_623.dispose();
            this.var_623 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_771)
         {
            case const_418:
               this.var_623 = new SingleProductContainer(this,param1);
               break;
            case const_427:
               this.var_623 = new MultiProductContainer(this,param1);
               break;
            case const_495:
               this.var_623 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_771);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_771 = const_418;
            }
            else
            {
               this.var_771 = const_427;
            }
         }
         else if(param1.length > 1)
         {
            this.var_771 = const_495;
         }
         else
         {
            this.var_771 = const_1873;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1183 > 0 && this.var_1181 > 0)
         {
            this.var_1182 = const_1243;
         }
         else if(this.var_1183 > 0)
         {
            this.var_1182 = const_889;
         }
         else if(this.var_1181 > 0)
         {
            this.var_1182 = const_1185;
         }
         else
         {
            this.var_1182 = const_1914;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_375.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_623.products)
         {
            _loc4_ = this.var_375.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
