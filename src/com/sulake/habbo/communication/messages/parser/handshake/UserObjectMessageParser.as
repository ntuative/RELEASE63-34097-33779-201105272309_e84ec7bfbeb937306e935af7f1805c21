package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_690:String;
      
      private var var_975:String;
      
      private var var_2726:String;
      
      private var var_1894:String;
      
      private var var_2729:int;
      
      private var var_2724:String;
      
      private var var_2728:int;
      
      private var var_2727:int;
      
      private var var_2444:int;
      
      private var var_1291:int;
      
      private var _petRespectLeft:int;
      
      private var var_2725:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_690 = param1.readString();
         this.var_975 = param1.readString();
         this.var_2726 = param1.readString();
         this.var_1894 = param1.readString();
         this.var_2729 = param1.readInteger();
         this.var_2724 = param1.readString();
         this.var_2728 = param1.readInteger();
         this.var_2727 = param1.readInteger();
         this.var_2444 = param1.readInteger();
         this.var_1291 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2725 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_690;
      }
      
      public function get sex() : String
      {
         return this.var_975;
      }
      
      public function get customData() : String
      {
         return this.var_2726;
      }
      
      public function get realName() : String
      {
         return this.var_1894;
      }
      
      public function get tickets() : int
      {
         return this.var_2729;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2724;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2728;
      }
      
      public function get directMail() : int
      {
         return this.var_2727;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2444;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1291;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get identityId() : int
      {
         return this.var_2725;
      }
   }
}
