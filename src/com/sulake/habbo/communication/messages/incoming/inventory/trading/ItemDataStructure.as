package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2543:int;
      
      private var var_1629:String;
      
      private var var_2656:int;
      
      private var var_2655:int;
      
      private var _category:int;
      
      private var var_2177:String;
      
      private var var_1558:int;
      
      private var var_2653:int;
      
      private var var_2651:int;
      
      private var var_2652:int;
      
      private var var_2654:int;
      
      private var var_2650:Boolean;
      
      private var var_3016:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2543 = param1;
         this.var_1629 = param2;
         this.var_2656 = param3;
         this.var_2655 = param4;
         this._category = param5;
         this.var_2177 = param6;
         this.var_1558 = param7;
         this.var_2653 = param8;
         this.var_2651 = param9;
         this.var_2652 = param10;
         this.var_2654 = param11;
         this.var_2650 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2543;
      }
      
      public function get itemType() : String
      {
         return this.var_1629;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2656;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2655;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2177;
      }
      
      public function get extra() : int
      {
         return this.var_1558;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2653;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2650;
      }
      
      public function get songID() : int
      {
         return this.var_1558;
      }
   }
}
