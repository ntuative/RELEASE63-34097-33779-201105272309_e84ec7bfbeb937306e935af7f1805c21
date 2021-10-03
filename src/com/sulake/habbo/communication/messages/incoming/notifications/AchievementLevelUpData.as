package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1138:int;
      
      private var var_1651:int;
      
      private var var_2657:int;
      
      private var var_1966:int;
      
      private var var_1545:int;
      
      private var var_318:int;
      
      private var var_2658:String = "";
      
      private var var_2659:String = "";
      
      private var var_2660:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1138 = param1.readInteger();
         this.var_318 = param1.readInteger();
         this.var_2658 = param1.readString();
         this.var_1651 = param1.readInteger();
         this.var_2657 = param1.readInteger();
         this.var_1966 = param1.readInteger();
         this.var_1545 = param1.readInteger();
         this.var_2660 = param1.readInteger();
         this.var_2659 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1138;
      }
      
      public function get points() : int
      {
         return this.var_1651;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2657;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1966;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1545;
      }
      
      public function get badgeId() : int
      {
         return this.var_318;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2658;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2659;
      }
      
      public function get achievementID() : int
      {
         return this.var_2660;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
