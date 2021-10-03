package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1992:int;
      
      private var var_2209:String;
      
      private var var_1138:int;
      
      private var var_1271:int;
      
      private var var_1653:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1992 = param1.readInteger();
         this.var_2209 = param1.readString();
         this.var_1138 = param1.readInteger();
         this.var_1271 = param1.readInteger();
         this.var_1653 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1992;
      }
      
      public function get petName() : String
      {
         return this.var_2209;
      }
      
      public function get level() : int
      {
         return this.var_1138;
      }
      
      public function get petType() : int
      {
         return this.var_1271;
      }
      
      public function get breed() : int
      {
         return this.var_1653;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
