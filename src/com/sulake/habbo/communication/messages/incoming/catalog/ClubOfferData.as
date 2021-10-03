package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1352:int;
      
      private var var_1668:String;
      
      private var var_1958:int;
      
      private var _upgrade:Boolean;
      
      private var var_2868:Boolean;
      
      private var var_2867:int;
      
      private var var_2869:int;
      
      private var var_2871:int;
      
      private var var_2866:int;
      
      private var var_2870:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1352 = param1.readInteger();
         this.var_1668 = param1.readString();
         this.var_1958 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2868 = param1.readBoolean();
         this.var_2867 = param1.readInteger();
         this.var_2869 = param1.readInteger();
         this.var_2871 = param1.readInteger();
         this.var_2866 = param1.readInteger();
         this.var_2870 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1352;
      }
      
      public function get productCode() : String
      {
         return this.var_1668;
      }
      
      public function get price() : int
      {
         return this.var_1958;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2868;
      }
      
      public function get periods() : int
      {
         return this.var_2867;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2869;
      }
      
      public function get year() : int
      {
         return this.var_2871;
      }
      
      public function get month() : int
      {
         return this.var_2866;
      }
      
      public function get day() : int
      {
         return this.var_2870;
      }
   }
}
