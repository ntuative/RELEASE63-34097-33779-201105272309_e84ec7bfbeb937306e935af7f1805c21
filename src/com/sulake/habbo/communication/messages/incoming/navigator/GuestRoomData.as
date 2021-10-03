package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_385:int;
      
      private var var_866:Boolean;
      
      private var var_1073:String;
      
      private var _ownerName:String;
      
      private var var_2345:int;
      
      private var var_2356:int;
      
      private var var_2788:int;
      
      private var var_1873:String;
      
      private var var_2790:int;
      
      private var var_2551:Boolean;
      
      private var var_745:int;
      
      private var var_1453:int;
      
      private var var_2789:String;
      
      private var var_887:Array;
      
      private var var_2787:RoomThumbnailData;
      
      private var var_2341:Boolean;
      
      private var var_2786:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_887 = new Array();
         super();
         this.var_385 = param1.readInteger();
         this.var_866 = param1.readBoolean();
         this.var_1073 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2345 = param1.readInteger();
         this.var_2356 = param1.readInteger();
         this.var_2788 = param1.readInteger();
         this.var_1873 = param1.readString();
         this.var_2790 = param1.readInteger();
         this.var_2551 = param1.readBoolean();
         this.var_745 = param1.readInteger();
         this.var_1453 = param1.readInteger();
         this.var_2789 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_887.push(_loc4_);
            _loc3_++;
         }
         this.var_2787 = new RoomThumbnailData(param1);
         this.var_2341 = param1.readBoolean();
         this.var_2786 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_887 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_385;
      }
      
      public function get event() : Boolean
      {
         return this.var_866;
      }
      
      public function get roomName() : String
      {
         return this.var_1073;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2345;
      }
      
      public function get userCount() : int
      {
         return this.var_2356;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2788;
      }
      
      public function get description() : String
      {
         return this.var_1873;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2790;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2551;
      }
      
      public function get score() : int
      {
         return this.var_745;
      }
      
      public function get categoryId() : int
      {
         return this.var_1453;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2789;
      }
      
      public function get tags() : Array
      {
         return this.var_887;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2787;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2341;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2786;
      }
   }
}
