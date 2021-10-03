package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1912:int = 0;
      
      private var var_1911:int = 0;
      
      private var var_2557:int = 0;
      
      private var var_2558:Boolean = false;
      
      private var var_2522:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1912 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1911 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2557 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2558 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2522 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1912;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1911;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2557;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2558;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2522;
      }
   }
}
