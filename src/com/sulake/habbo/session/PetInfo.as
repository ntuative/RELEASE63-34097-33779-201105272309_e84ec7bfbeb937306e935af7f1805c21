package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1992:int;
      
      private var var_1138:int;
      
      private var var_2795:int;
      
      private var var_2280:int;
      
      private var var_2796:int;
      
      private var _energy:int;
      
      private var var_2794:int;
      
      private var _nutrition:int;
      
      private var var_2793:int;
      
      private var var_2643:int;
      
      private var _ownerName:String;
      
      private var var_2756:int;
      
      private var var_535:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1992;
      }
      
      public function get level() : int
      {
         return this.var_1138;
      }
      
      public function get levelMax() : int
      {
         return this.var_2795;
      }
      
      public function get experience() : int
      {
         return this.var_2280;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2796;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2794;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2793;
      }
      
      public function get ownerId() : int
      {
         return this.var_2643;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2756;
      }
      
      public function get age() : int
      {
         return this.var_535;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1992 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1138 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2795 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2280 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2796 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2794 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2793 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2643 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2756 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_535 = param1;
      }
   }
}
