package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2389:Boolean;
      
      private var var_2390:int;
      
      private var var_1759:Array;
      
      private var var_877:Array;
      
      private var var_879:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2389;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2390;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1759;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_877;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_879;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1759 = [];
         this.var_877 = [];
         this.var_879 = [];
         this.var_2389 = param1.readBoolean();
         this.var_2390 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1759.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_877.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_879.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
