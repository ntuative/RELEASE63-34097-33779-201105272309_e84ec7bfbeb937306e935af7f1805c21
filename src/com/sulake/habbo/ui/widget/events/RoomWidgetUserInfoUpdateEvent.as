package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_108:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_142:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_796:int = 2;
      
      public static const const_733:int = 3;
      
      public static const const_1878:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1955:String = "";
      
      private var var_2254:int;
      
      private var var_2251:int = 0;
      
      private var var_2253:int = 0;
      
      private var var_690:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_234:Array;
      
      private var var_1590:int = 0;
      
      private var var_2428:String = "";
      
      private var var_2430:int = 0;
      
      private var var_2429:int = 0;
      
      private var var_1754:Boolean = false;
      
      private var var_1894:String = "";
      
      private var var_2176:Boolean = false;
      
      private var var_2672:Boolean = false;
      
      private var var_2667:Boolean = true;
      
      private var var_1291:int = 0;
      
      private var var_2668:Boolean = false;
      
      private var var_2665:Boolean = false;
      
      private var var_2664:Boolean = false;
      
      private var var_2669:Boolean = false;
      
      private var var_2666:Boolean = false;
      
      private var var_2671:Boolean = false;
      
      private var var_2670:int = 0;
      
      private var var_1752:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_234 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1955 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1955;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2254 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2254;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2251 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2251;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2253 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2253;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_690 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_690;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_234 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_234;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1590 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1590;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2428 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2428;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2672 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2672;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1291 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1291;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2668 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2668;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2665 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2665;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2664 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2664;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2669 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2669;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2666 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2666;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2671 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2671;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2670 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2670;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2667 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2667;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1752 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1752;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2430 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2430;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2429 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2429;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1754 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1754;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1894 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1894;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2176 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2176;
      }
   }
}
