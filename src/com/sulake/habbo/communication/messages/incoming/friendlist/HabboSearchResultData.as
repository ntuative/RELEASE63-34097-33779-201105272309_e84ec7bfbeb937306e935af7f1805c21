package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2474:int;
      
      private var var_1892:String;
      
      private var var_2630:String;
      
      private var var_2925:Boolean;
      
      private var var_2927:Boolean;
      
      private var var_2926:int;
      
      private var var_2631:String;
      
      private var var_2928:String;
      
      private var var_1894:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2474 = param1.readInteger();
         this.var_1892 = param1.readString();
         this.var_2630 = param1.readString();
         this.var_2925 = param1.readBoolean();
         this.var_2927 = param1.readBoolean();
         param1.readString();
         this.var_2926 = param1.readInteger();
         this.var_2631 = param1.readString();
         this.var_2928 = param1.readString();
         this.var_1894 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2474;
      }
      
      public function get avatarName() : String
      {
         return this.var_1892;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2630;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2925;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2927;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2926;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2631;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2928;
      }
      
      public function get realName() : String
      {
         return this.var_1894;
      }
   }
}
