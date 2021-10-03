package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1112:String;
      
      private var var_1565:Array;
      
      private var var_1230:Array;
      
      private var var_1986:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1112;
      }
      
      public function get choices() : Array
      {
         return this.var_1565.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1230.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1986;
      }
      
      public function flush() : Boolean
      {
         this.var_1112 = "";
         this.var_1565 = [];
         this.var_1230 = [];
         this.var_1986 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1112 = param1.readString();
         this.var_1565 = [];
         this.var_1230 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1565.push(param1.readString());
            this.var_1230.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1986 = param1.readInteger();
         return true;
      }
   }
}
