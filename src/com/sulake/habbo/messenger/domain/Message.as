package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_887:int = 1;
      
      public static const const_991:int = 2;
      
      public static const const_758:int = 3;
      
      public static const const_1278:int = 4;
      
      public static const const_944:int = 5;
      
      public static const const_1349:int = 6;
       
      
      private var _type:int;
      
      private var var_1277:int;
      
      private var var_2562:String;
      
      private var var_2661:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1277 = param2;
         this.var_2562 = param3;
         this.var_2661 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2562;
      }
      
      public function get time() : String
      {
         return this.var_2661;
      }
      
      public function get senderId() : int
      {
         return this.var_1277;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
