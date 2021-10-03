package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1873:String;
      
      private var var_2345:int;
      
      private var _password:String;
      
      private var var_1453:int;
      
      private var var_2347:int;
      
      private var var_887:Array;
      
      private var var_2340:Array;
      
      private var var_2341:Boolean;
      
      private var var_2343:Boolean;
      
      private var var_2342:Boolean;
      
      private var var_2344:Boolean;
      
      private var var_2348:int;
      
      private var var_2346:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2341;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2341 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2343;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2343 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2342;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2342 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2344;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2344 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2348;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2348 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2346;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2346 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1873;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1873 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2345;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2345 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1453;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1453 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2347;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2347 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_887;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_887 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2340;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2340 = param1;
      }
   }
}
