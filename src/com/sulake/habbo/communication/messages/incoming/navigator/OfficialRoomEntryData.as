package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1258:int = 1;
      
      public static const const_915:int = 2;
      
      public static const const_803:int = 3;
      
      public static const const_1712:int = 4;
       
      
      private var _index:int;
      
      private var var_2673:String;
      
      private var var_2677:String;
      
      private var var_2674:Boolean;
      
      private var var_2675:String;
      
      private var var_1093:String;
      
      private var var_2676:int;
      
      private var var_2356:int;
      
      private var _type:int;
      
      private var var_2221:String;
      
      private var var_999:GuestRoomData;
      
      private var var_1000:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2673 = param1.readString();
         this.var_2677 = param1.readString();
         this.var_2674 = param1.readInteger() == 1;
         this.var_2675 = param1.readString();
         this.var_1093 = param1.readString();
         this.var_2676 = param1.readInteger();
         this.var_2356 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1258)
         {
            this.var_2221 = param1.readString();
         }
         else if(this._type == const_803)
         {
            this.var_1000 = new PublicRoomData(param1);
         }
         else if(this._type == const_915)
         {
            this.var_999 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_999 != null)
         {
            this.var_999.dispose();
            this.var_999 = null;
         }
         if(this.var_1000 != null)
         {
            this.var_1000.dispose();
            this.var_1000 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2673;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2677;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2674;
      }
      
      public function get picText() : String
      {
         return this.var_2675;
      }
      
      public function get picRef() : String
      {
         return this.var_1093;
      }
      
      public function get folderId() : int
      {
         return this.var_2676;
      }
      
      public function get tag() : String
      {
         return this.var_2221;
      }
      
      public function get userCount() : int
      {
         return this.var_2356;
      }
      
      public function get method_1() : GuestRoomData
      {
         return this.var_999;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1000;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1258)
         {
            return 0;
         }
         if(this.type == const_915)
         {
            return this.var_999.maxUserCount;
         }
         if(this.type == const_803)
         {
            return this.var_1000.maxUsers;
         }
         return 0;
      }
   }
}
