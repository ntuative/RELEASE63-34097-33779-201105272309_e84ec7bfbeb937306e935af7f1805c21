package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2740:String;
      
      private var var_2236:int;
      
      private var var_2241:int;
      
      private var var_2929:String;
      
      private var var_2939:int;
      
      private var var_1956:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2740 = param1.readString();
         this.var_2236 = param1.readInteger();
         this.var_2241 = param1.readInteger();
         this.var_2929 = param1.readString();
         this.var_2939 = param1.readInteger();
         this.var_1956 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2740;
      }
      
      public function get unitPort() : int
      {
         return this.var_2236;
      }
      
      public function get worldId() : int
      {
         return this.var_2241;
      }
      
      public function get castLibs() : String
      {
         return this.var_2929;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2939;
      }
      
      public function get nodeId() : int
      {
         return this.var_1956;
      }
   }
}
