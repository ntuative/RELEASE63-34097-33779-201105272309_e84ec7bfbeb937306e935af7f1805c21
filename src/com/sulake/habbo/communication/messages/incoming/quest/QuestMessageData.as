package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1794:String;
      
      private var var_2480:int;
      
      private var var_2481:int;
      
      private var var_1805:int;
      
      private var _id:int;
      
      private var var_1796:Boolean;
      
      private var _type:String;
      
      private var var_1795:String;
      
      private var var_1797:int;
      
      private var _localizationCode:String;
      
      private var var_2479:int;
      
      private var var_2483:int;
      
      private var var_2482:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1794 = param1.readString();
         this.var_2480 = param1.readInteger();
         this.var_2481 = param1.readInteger();
         this.var_1805 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1796 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1795 = param1.readString();
         this.var_1797 = param1.readInteger();
         this._localizationCode = param1.readString();
         this.var_2479 = param1.readInteger();
         this.var_2483 = param1.readInteger();
         this.var_2482 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1795 = "";
         this.var_1797 = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1794;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2480;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2481;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1805;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1796;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1795;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1797;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2479;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2483;
      }
      
      public function get waitPeriodSeconds() : int
      {
         return this.var_2482;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1794;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this._localizationCode;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1796 = param1;
      }
   }
}
