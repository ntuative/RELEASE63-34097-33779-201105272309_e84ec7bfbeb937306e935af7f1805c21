package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1966:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_207:MsgWithRequestId;
      
      private var var_619:RoomEventData;
      
      private var var_2470:Boolean;
      
      private var var_2471:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2474:int;
      
      private var var_256:GuestRoomData;
      
      private var var_959:PublicRoomShortData;
      
      private var var_2465:int;
      
      private var var_2473:Boolean;
      
      private var var_2467:int;
      
      private var var_2464:Boolean;
      
      private var var_1788:int;
      
      private var var_2475:Boolean;
      
      private var var_1464:Array;
      
      private var var_1470:Array;
      
      private var var_2468:int;
      
      private var var_1469:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1176:Boolean;
      
      private var var_2466:int;
      
      private var var_2469:Boolean;
      
      private var var_2472:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1464 = new Array();
         this.var_1470 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_256 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_256 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_959 = null;
         this.var_256 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_959 = param1.publicSpace;
            this.var_619 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_619 != null)
         {
            this.var_619.dispose();
            this.var_619 = null;
         }
         if(this.var_959 != null)
         {
            this.var_959.dispose();
            this.var_959 = null;
         }
         if(this.var_256 != null)
         {
            this.var_256.dispose();
            this.var_256 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_256 != null)
         {
            this.var_256.dispose();
         }
         this.var_256 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_619 != null)
         {
            this.var_619.dispose();
         }
         this.var_619 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_207 != null && this.var_207 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_207 != null && this.var_207 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_207 != null && this.var_207 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_207 = param1;
         this.var_1176 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_207 = param1;
         this.var_1176 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_207 = param1;
         this.var_1176 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_207 == null)
         {
            return;
         }
         this.var_207.dispose();
         this.var_207 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_207 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_207 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_207 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_619;
      }
      
      public function get avatarId() : int
      {
         return this.var_2474;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2470;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2471;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_256;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_959;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2473;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2467;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1788;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2464;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2466;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2465;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2475;
      }
      
      public function get adIndex() : int
      {
         return this.var_2472;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2469;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2474 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2467 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2473 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2470 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2471 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2464 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1788 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2466 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2465 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2475 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2472 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2469 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1464 = param1;
         this.var_1470 = new Array();
         for each(_loc2_ in this.var_1464)
         {
            if(_loc2_.visible)
            {
               this.var_1470.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1464;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1470;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2468 = param1.limit;
         this.var_1469 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1469 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_256.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_256 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_256.flatId;
         return this.var_1788 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1469 >= this.var_2468;
      }
      
      public function startLoading() : void
      {
         this.var_1176 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1176;
      }
   }
}
