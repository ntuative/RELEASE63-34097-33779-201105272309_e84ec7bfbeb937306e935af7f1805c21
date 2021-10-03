package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_669:QuestsList;
      
      private var var_543:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_376:QuestTracker;
      
      private var var_1023:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_376 = new QuestTracker(this._questEngine);
         this.var_669 = new QuestsList(this._questEngine);
         this.var_543 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_1023 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_669.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_669.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_376.onQuest(param1);
         this.var_543.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_376.onQuestCompleted(param1);
         this.var_543.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_376.onQuestCancelled();
         this.var_543.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_376.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_669.onRoomExit();
         this.var_376.onRoomExit();
         this.var_543.onRoomExit();
         this.var_1023.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_376.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_669)
         {
            this.var_669.dispose();
            this.var_669 = null;
         }
         if(this.var_376)
         {
            this.var_376.dispose();
            this.var_376 = null;
         }
         if(this.var_543)
         {
            this.var_543.dispose();
            this.var_543 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_1023)
         {
            this.var_1023.dispose();
            this.var_1023 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_669;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_543;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_376;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_1023;
      }
   }
}
