package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1992:int;
      
      private var _name:String;
      
      private var var_1138:int;
      
      private var var_2815:int;
      
      private var var_2280:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_690:String;
      
      private var var_2813:int;
      
      private var var_2814:int;
      
      private var var_2812:int;
      
      private var var_2756:int;
      
      private var var_2643:int;
      
      private var _ownerName:String;
      
      private var var_535:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1992;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1138;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2815;
      }
      
      public function get experience() : int
      {
         return this.var_2280;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_690;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2813;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2814;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2812;
      }
      
      public function get respect() : int
      {
         return this.var_2756;
      }
      
      public function get ownerId() : int
      {
         return this.var_2643;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_535;
      }
      
      public function flush() : Boolean
      {
         this.var_1992 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1992 = param1.readInteger();
         this._name = param1.readString();
         this.var_1138 = param1.readInteger();
         this.var_2815 = param1.readInteger();
         this.var_2280 = param1.readInteger();
         this.var_2813 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2814 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2812 = param1.readInteger();
         this.var_690 = param1.readString();
         this.var_2756 = param1.readInteger();
         this.var_2643 = param1.readInteger();
         this.var_535 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
