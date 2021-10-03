package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2612:String;
      
      private var var_1880:String;
      
      private var var_2611:String;
      
      private var var_1878:Boolean;
      
      private var var_1879:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2612 = String(param1["set-type"]);
         this.var_1880 = String(param1["flipped-set-type"]);
         this.var_2611 = String(param1["remove-set-type"]);
         this.var_1878 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1879 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1879;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1879 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2612;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1880;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2611;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1878;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1878 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1880 = param1;
      }
   }
}
