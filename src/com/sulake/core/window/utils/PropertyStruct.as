package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_160:String = "hex";
      
      public static const const_42:String = "int";
      
      public static const const_247:String = "uint";
      
      public static const const_132:String = "Number";
      
      public static const const_38:String = "Boolean";
      
      public static const const_52:String = "String";
      
      public static const const_293:String = "Point";
      
      public static const const_241:String = "Rectangle";
      
      public static const const_148:String = "Array";
      
      public static const const_279:String = "Map";
       
      
      private var var_685:String;
      
      private var var_195:Object;
      
      private var _type:String;
      
      private var var_2864:Boolean;
      
      private var var_2996:Boolean;
      
      private var var_2865:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_685 = param1;
         this.var_195 = param2;
         this._type = param3;
         this.var_2864 = param4;
         this.var_2996 = param3 == const_279 || param3 == const_148 || param3 == const_293 || param3 == const_241;
         this.var_2865 = param5;
      }
      
      public function get key() : String
      {
         return this.var_685;
      }
      
      public function get value() : Object
      {
         return this.var_195;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get method_4() : Boolean
      {
         return this.var_2864;
      }
      
      public function get range() : Array
      {
         return this.var_2865;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_160:
               return "0x" + uint(this.var_195).toString(16);
            case const_38:
               return Boolean(this.var_195) == true ? "true" : "HeightMapMessageEvent";
            case const_293:
               return "Point(" + Point(this.var_195).x + ", " + Point(this.var_195).y + ")";
            case const_241:
               return "Rectangle(" + Rectangle(this.var_195).x + ", " + Rectangle(this.var_195).y + ", " + Rectangle(this.var_195).width + ", " + Rectangle(this.var_195).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_279:
               _loc3_ = this.var_195 as Map;
               _loc1_ = "<var key=\"" + this.var_685 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_148:
               _loc4_ = this.var_195 as Array;
               _loc1_ = "<var key=\"" + this.var_685 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_293:
               _loc5_ = this.var_195 as Point;
               _loc1_ = "<var key=\"" + this.var_685 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_241:
               _loc6_ = this.var_195 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_685 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_160:
               _loc1_ = "<var key=\"" + this.var_685 + "\" value=\"" + "0x" + uint(this.var_195).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_685 + "\" value=\"" + this.var_195 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
