package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1056:int;
      
      private var var_796:Boolean;
      
      private var var_1850:Boolean;
      
      private var var_690:String;
      
      private var var_1453:int;
      
      private var var_1955:String;
      
      private var var_1893:String;
      
      private var var_1894:String;
      
      private var var_2279:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1056 = param1.readInteger();
         this.var_796 = param1.readBoolean();
         this.var_1850 = param1.readBoolean();
         this.var_690 = param1.readString();
         this.var_1453 = param1.readInteger();
         this.var_1955 = param1.readString();
         this.var_1893 = param1.readString();
         this.var_1894 = param1.readString();
         this.var_2279 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1056;
      }
      
      public function get online() : Boolean
      {
         return this.var_796;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1850;
      }
      
      public function get figure() : String
      {
         return this.var_690;
      }
      
      public function get categoryId() : int
      {
         return this.var_1453;
      }
      
      public function get motto() : String
      {
         return this.var_1955;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1893;
      }
      
      public function get realName() : String
      {
         return this.var_1894;
      }
      
      public function get facebookId() : String
      {
         return this.var_2279;
      }
   }
}
