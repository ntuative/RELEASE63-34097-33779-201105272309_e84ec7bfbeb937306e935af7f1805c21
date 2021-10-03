package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1138:int;
      
      private var var_318:String;
      
      private var var_1935:int;
      
      private var var_2657:int;
      
      private var var_1966:int;
      
      private var var_1937:int;
      
      private var var_1936:Boolean;
      
      private var _category:String;
      
      private var var_2703:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1138 = param1.readInteger();
         this.var_318 = param1.readString();
         this.var_1935 = Math.max(1,param1.readInteger());
         this.var_2657 = param1.readInteger();
         this.var_1966 = param1.readInteger();
         this.var_1937 = param1.readInteger();
         this.var_1936 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2703 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_318;
      }
      
      public function get level() : int
      {
         return this.var_1138;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1935;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2657;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1966;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1937;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1936;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2703;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1138 > 1 || this.var_1936;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1937 = this.var_1935;
      }
   }
}
