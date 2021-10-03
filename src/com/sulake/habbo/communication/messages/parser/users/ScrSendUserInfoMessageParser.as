package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2031:int = 1;
      
      public static const const_1886:int = 2;
       
      
      private var var_1054:String;
      
      private var var_2528:int;
      
      private var var_2526:int;
      
      private var var_2525:int;
      
      private var var_2530:int;
      
      private var var_2524:Boolean;
      
      private var var_2522:Boolean;
      
      private var var_2521:int;
      
      private var var_2520:int;
      
      private var var_2527:Boolean;
      
      private var var_2529:int;
      
      private var var_2523:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1054 = param1.readString();
         this.var_2528 = param1.readInteger();
         this.var_2526 = param1.readInteger();
         this.var_2525 = param1.readInteger();
         this.var_2530 = param1.readInteger();
         this.var_2524 = param1.readBoolean();
         this.var_2522 = param1.readBoolean();
         this.var_2521 = param1.readInteger();
         this.var_2520 = param1.readInteger();
         this.var_2527 = param1.readBoolean();
         this.var_2529 = param1.readInteger();
         this.var_2523 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1054;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2528;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2526;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2525;
      }
      
      public function get responseType() : int
      {
         return this.var_2530;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2524;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2522;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2521;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2520;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2527;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2529;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2523;
      }
   }
}
