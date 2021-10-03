package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2177:String;
      
      protected var var_1558:Number;
      
      protected var var_2953:Boolean;
      
      protected var var_2952:Boolean;
      
      protected var var_2650:Boolean;
      
      protected var var_2308:Boolean;
      
      protected var var_2951:int;
      
      protected var var_2651:int;
      
      protected var var_2652:int;
      
      protected var var_2654:int;
      
      protected var var_2053:String;
      
      protected var var_1664:int;
      
      protected var var_900:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2650 = param5;
         this.var_2952 = param6;
         this.var_2953 = param7;
         this.var_2308 = param8;
         this.var_2177 = param9;
         this.var_1558 = param10;
         this.var_2951 = param11;
         this.var_2651 = param12;
         this.var_2652 = param13;
         this.var_2654 = param14;
         this.var_2053 = param15;
         this.var_1664 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2177;
      }
      
      public function get extra() : Number
      {
         return this.var_1558;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2953;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2952;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2650;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2308;
      }
      
      public function get expires() : int
      {
         return this.var_2951;
      }
      
      public function get creationDay() : int
      {
         return this.var_2651;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2652;
      }
      
      public function get creationYear() : int
      {
         return this.var_2654;
      }
      
      public function get slotId() : String
      {
         return this.var_2053;
      }
      
      public function get songId() : int
      {
         return this.var_1664;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_900 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_900;
      }
   }
}
