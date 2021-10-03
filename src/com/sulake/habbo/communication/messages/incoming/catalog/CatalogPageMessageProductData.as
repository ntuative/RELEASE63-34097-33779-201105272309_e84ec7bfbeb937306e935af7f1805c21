package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_82:String = "s";
      
      public static const const_198:String = "e";
       
      
      private var var_1586:String;
      
      private var var_2399:int;
      
      private var var_1312:String;
      
      private var var_1585:int;
      
      private var var_2029:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1586 = param1.readString();
         this.var_2399 = param1.readInteger();
         this.var_1312 = param1.readString();
         this.var_1585 = param1.readInteger();
         this.var_2029 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1586;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2399;
      }
      
      public function get extraParam() : String
      {
         return this.var_1312;
      }
      
      public function get productCount() : int
      {
         return this.var_1585;
      }
      
      public function get expiration() : int
      {
         return this.var_2029;
      }
   }
}
