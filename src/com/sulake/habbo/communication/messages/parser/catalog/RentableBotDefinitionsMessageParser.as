package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.utils.Map;
   
   public class RentableBotDefinitionsMessageParser implements IMessageParser
   {
       
      
      private var var_1952:Map;
      
      public function RentableBotDefinitionsMessageParser()
      {
         super();
         this.var_1952 = new Map();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString().toLowerCase();
            _loc5_ = param1.readString();
            this.var_1952[_loc4_] = _loc5_;
            _loc3_++;
         }
         return true;
      }
      
      public function get rentableBots() : Map
      {
         return this.var_1952;
      }
   }
}
