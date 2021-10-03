package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_975:String = "";
      
      private var var_690:String = "";
      
      private var var_2252:String = "";
      
      private var var_2254:int;
      
      private var var_2251:int = 0;
      
      private var var_2255:String = "";
      
      private var var_2250:int = 0;
      
      private var var_2253:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2254;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2254 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_975;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_975 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_690;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_690 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2252;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2252 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2251;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2251 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2255;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2255 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2250;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2250 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2253;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2253 = param1;
      }
   }
}
