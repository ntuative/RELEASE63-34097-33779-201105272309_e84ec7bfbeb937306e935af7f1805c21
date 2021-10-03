package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2319:int;
      
      private var var_2317:int;
      
      private var var_796:Boolean;
      
      private var var_2316:int;
      
      private var var_2318:int;
      
      private var var_2315:int;
      
      private var var_2314:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2319 = param1.readInteger();
         this.var_2317 = param1.readInteger();
         this.var_796 = param1.readBoolean();
         this.var_2316 = param1.readInteger();
         this.var_2318 = param1.readInteger();
         this.var_2315 = param1.readInteger();
         this.var_2314 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2319;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2317;
      }
      
      public function get online() : Boolean
      {
         return this.var_796;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2316;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2318;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2315;
      }
      
      public function get banCount() : int
      {
         return this.var_2314;
      }
   }
}
