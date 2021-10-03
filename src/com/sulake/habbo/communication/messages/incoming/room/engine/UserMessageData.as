package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1327:String = "M";
      
      public static const const_1798:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_473:int = 0;
      
      private var _name:String = "";
      
      private var var_1644:int = 0;
      
      private var var_975:String = "";
      
      private var var_690:String = "";
      
      private var var_2252:String = "";
      
      private var var_2254:int;
      
      private var var_2251:int = 0;
      
      private var var_2255:String = "";
      
      private var var_2250:int = 0;
      
      private var var_2253:int = 0;
      
      private var var_2256:String = "";
      
      private var var_178:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_178 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_178)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_178)
         {
            this.var_172 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_171;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_178)
         {
            this.var_171 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_473;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_178)
         {
            this.var_473 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_178)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1644;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_178)
         {
            this.var_1644 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_975;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_178)
         {
            this.var_975 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_690;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_178)
         {
            this.var_690 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2252;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_178)
         {
            this.var_2252 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2254;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_178)
         {
            this.var_2254 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2251;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_178)
         {
            this.var_2251 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2255;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_178)
         {
            this.var_2255 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2250;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_178)
         {
            this.var_2250 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2253;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_178)
         {
            this.var_2253 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2256;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_178)
         {
            this.var_2256 = param1;
         }
      }
   }
}
