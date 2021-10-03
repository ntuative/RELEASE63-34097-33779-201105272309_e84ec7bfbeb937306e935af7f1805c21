package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var _rgb:uint;
      
      private var var_1684:uint;
      
      private var var_1682:uint;
      
      private var _b:uint;
      
      private var var_832:ColorTransform;
      
      private var var_1680:Number;
      
      private var var_1683:Number;
      
      private var var_1681:Number;
      
      private var var_2886:int;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1684 = this._rgb >> 16 & 255;
         this.var_1682 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1680 = this.var_1684 / 255 * 1;
         this.var_1683 = this.var_1682 / 255 * 1;
         this.var_1681 = this._b / 255 * 1;
         this.var_832 = new ColorTransform(this.var_1680,this.var_1683,this.var_1681);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1684;
      }
      
      public function get g() : uint
      {
         return this.var_1682;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_832;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return this.var_2886;
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         this.var_2886 = param1;
      }
   }
}
