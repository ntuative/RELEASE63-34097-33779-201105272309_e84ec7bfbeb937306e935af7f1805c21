package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ISelectableWindow;
   import com.sulake.core.window.components.ITabButtonWindow;
   import com.sulake.core.window.components.ITabContextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetOfficialRoomsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetPopularRoomTagsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.LatestEventsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFavouriteRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFriendsRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomHistorySearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.PopularRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTagSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTextSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWhereMyFriendsAreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWithHighestScoreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.session.QuitMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.IViewCtrl;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.Tab;
   import com.sulake.habbo.navigator.domain.Tabs;
   import com.sulake.habbo.navigator.events.HabboNavigatorTrackingEvent;
   import com.sulake.habbo.utils.WindowToggle;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class MainViewCtrl implements IUpdateReceiver, IDisposable
   {
      
      public static const const_487:int = 1;
      
      public static const const_832:int = 2;
      
      public static const const_2171:int = 3;
      
      public static const const_1129:int = 4;
      
      private static const const_1021:int = 1;
      
      private static const const_650:int = 2;
      
      private static const const_1020:int = 3;
      
      private static const const_1440:int = 4;
      
      private static const SCROLLBAR_WIDTH:int = 22;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_17:IFrameWindow;
      
      private var var_196:IWindowContainer;
      
      private var var_225:IWindowContainer;
      
      private var var_251:IWindowContainer;
      
      private var var_204:IWindowContainer;
      
      private var var_946:PopularTagsListCtrl;
      
      private var var_947:GuestRoomListCtrl;
      
      private var var_1163:OfficialRoomListCtrl;
      
      private var var_268:ITabContextWindow;
      
      private var var_1756:Boolean;
      
      private var var_604:int;
      
      private var var_1162:Boolean = true;
      
      private var var_1442:int = 0;
      
      private var var_1441:IWindow;
      
      private var var_747:IRegionWindow;
      
      private var var_2385:int = 0;
      
      private var var_499:Timer;
      
      private var _disposed:Boolean = false;
      
      private var var_748:WindowToggle;
      
      private const const_1959:Point = new Point(100,10);
      
      public function MainViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_946 = new PopularTagsListCtrl(this._navigator);
         this.var_947 = new GuestRoomListCtrl(this._navigator);
         this.var_1163 = new OfficialRoomListCtrl(this._navigator);
         this.var_499 = new Timer(300,1);
         this.var_499.addEventListener(TimerEvent.TIMER,this.onResizeTimer);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function onNavigatorToolBarIconClick() : Boolean
      {
         if(!this.var_17)
         {
            this.reloadData();
            return true;
         }
         if(!this.var_748 || this.var_748.disposed)
         {
            this.var_748 = new WindowToggle(this.var_17,this.var_17.desktop,this.reloadData,this.close);
         }
         var _loc1_:int = this.var_748.toggle();
         return _loc1_ == WindowToggle.RESULT_SHOW;
      }
      
      private function reloadData() : void
      {
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.navigatorOpenedWhileInTab();
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this._navigator = null;
            if(this.var_17)
            {
               this.var_17.dispose();
               this.var_17 = null;
            }
            if(this.var_748)
            {
               this.var_748.dispose();
               this.var_748 = null;
            }
            if(this.var_196)
            {
               this.var_196.dispose();
               this.var_196 = null;
            }
            if(this.var_499)
            {
               this.var_499.removeEventListener(TimerEvent.TIMER,this.onResizeTimer);
               this.var_499.reset();
               this.var_499 = null;
            }
            if(this.var_946)
            {
               this.var_946.dispose();
               this.var_946 = null;
            }
            if(this.var_947)
            {
               this.var_947.dispose();
               this.var_947 = null;
            }
            if(this.var_1163)
            {
               this.var_1163.dispose();
               this.var_1163 = null;
            }
         }
      }
      
      public function open() : void
      {
         if(this.var_17 == null)
         {
            this.prepare();
         }
         this.refresh();
         this.var_17.visible = true;
         this.var_17.activate();
      }
      
      public function isOpen() : Boolean
      {
         return this.var_17 != null && this.var_17.visible;
      }
      
      public function close() : void
      {
         if(this.var_17 != null)
         {
            this.var_17.visible = false;
         }
      }
      
      public function get mainWindow() : IFrameWindow
      {
         return this.var_17;
      }
      
      private function prepare() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         this.var_17 = IFrameWindow(this._navigator.getXmlWindow("grs_main_window"));
         this.var_268 = ITabContextWindow(this.var_17.findChildByName("tab_context"));
         this.var_196 = IWindowContainer(this.var_17.findChildByName("tab_content"));
         this.var_225 = IWindowContainer(this.var_17.findChildByName("custom_content"));
         this.var_204 = IWindowContainer(this.var_17.findChildByName("list_content"));
         this.var_251 = IWindowContainer(this.var_17.findChildByName("custom_footer"));
         this.var_1441 = this.var_17.findChildByName("loading_text");
         var _loc1_:IWindow = this.var_17.findChildByTag("close");
         if(_loc1_ != null)
         {
            _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onWindowClose);
         }
         this.var_747 = IRegionWindow(this.var_17.findChildByName("to_hotel_view"));
         if(this.var_747 != null)
         {
            this.var_747.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onHotelViewMouseOver);
            this.var_747.addEventListener(WindowMouseEvent.const_25,this.onHotelViewMouseOut);
            this.var_747.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onHotelViewMouseClick);
         }
         this.refreshToHotelViewButton(false);
         this.var_17.addEventListener(WindowEvent.const_40,this.onWindowResized);
         for each(_loc2_ in this._navigator.tabs.tabs)
         {
            _loc3_ = this.var_268.getTabItemByID(_loc2_.id);
            if(_loc3_ != null)
            {
               _loc3_.addEventListener(WindowEvent.const_49,this.onTabSelected);
               _loc2_.button = _loc3_;
            }
         }
         this.var_17.scaler.setParamFlag(HabboWindowParam.const_713,false);
         this.var_17.scaler.setParamFlag(HabboWindowParam.const_1787,true);
         this.var_17.position = this.const_1959;
      }
      
      public function refresh() : void
      {
         if(this.var_17 == null)
         {
            return;
         }
         this.refreshTab();
         this.refreshCustomContent();
         this.refreshListContent(true);
         this.refreshFooter();
         this.var_225.height = Util.getLowestPoint(this.var_225);
         this.var_251.height = Util.getLowestPoint(this.var_251);
         var _loc1_:int = this.var_204.y;
         Util.moveChildrenToColumn(this.var_196,["custom_content","list_content"],this.var_225.y,8);
         this.var_204.height = this.var_204.height + _loc1_ - this.var_204.y - this.var_251.height + this.var_2385;
         Util.moveChildrenToColumn(this.var_196,["list_content","custom_footer"],this.var_204.y,0);
         this.var_2385 = this.var_251.height;
         this.onResizeTimer(null);
      }
      
      private function refreshTab() : void
      {
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         var _loc2_:ISelectableWindow = this.var_268.selector.getSelected();
         if(_loc1_.button != _loc2_)
         {
            this.var_1756 = true;
            this.var_268.selector.setSelected(_loc1_.button);
         }
      }
      
      private function refreshCustomContent() : void
      {
         Util.hideChildren(this.var_225);
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshCustomContent(this.var_225);
         if(Util.hasVisibleChildren(this.var_225))
         {
            this.var_225.visible = true;
         }
         else
         {
            this.var_225.visible = false;
            this.var_225.blend = 1;
         }
      }
      
      private function refreshFooter() : void
      {
         Util.hideChildren(this.var_251);
         var _loc1_:Tab = this._navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshFooter(this.var_251);
         if(Util.hasVisibleChildren(this.var_251))
         {
            this.var_251.visible = true;
         }
         else
         {
            this.var_251.visible = false;
         }
      }
      
      private function refreshListContent(param1:Boolean) : void
      {
         Util.hideChildren(this.var_204);
         this.refreshGuestRooms(param1,this._navigator.data.guestRoomSearchArrived);
         this.refreshPopularTags(param1,this._navigator.data.popularTagsArrived);
         this.refreshOfficialRooms(param1,this._navigator.data.officialRoomsArrived);
      }
      
      private function refreshGuestRooms(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_947,"guest_rooms");
      }
      
      private function refreshPopularTags(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_946,"popular_tags");
      }
      
      private function refreshOfficialRooms(param1:Boolean, param2:Boolean) : void
      {
         this.refreshList(param1,param2,this.var_1163,"official_rooms");
      }
      
      private function refreshList(param1:Boolean, param2:Boolean, param3:IViewCtrl, param4:String) : void
      {
         var _loc5_:* = null;
         if(param2)
         {
            if(param3.content == null)
            {
               _loc5_ = this.var_204.getChildByName(param4);
               param3.content = IWindowContainer(_loc5_);
            }
            if(param1)
            {
               param3.refresh();
            }
            param3.content.visible = true;
         }
      }
      
      private function onWindowClose(param1:WindowEvent) : void
      {
         Logger.log("Close navigator window");
         this.close();
      }
      
      private function onTabSelected(param1:WindowEvent) : void
      {
         var _loc2_:IWindow = param1.target;
         var _loc3_:int = _loc2_.id;
         if(this.var_1756)
         {
            this.var_1756 = false;
            return;
         }
         var _loc4_:Tab = this._navigator.tabs.getTab(_loc3_);
         _loc4_.sendSearchRequest();
         switch(_loc4_.id)
         {
            case Tabs.const_332:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS));
               break;
            case Tabs.const_260:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME));
               break;
            case Tabs.const_335:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL));
               break;
            case Tabs.const_197:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS));
               break;
            case Tabs.const_191:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH));
         }
      }
      
      public function reloadRoomList(param1:int) : Boolean
      {
         ErrorReportStorage.addDebugData("MainViewCtrl","Reloading RoomList");
         if(this.isOpen() && this._navigator.data.guestRoomSearchResults != null && this._navigator.data.guestRoomSearchResults.searchType == param1)
         {
            this.startSearch(this._navigator.tabs.getSelected().id,param1,"");
            return true;
         }
         return false;
      }
      
      public function startSearch(param1:int, param2:int, param3:String = "-1", param4:int = 1) : void
      {
         var _loc5_:Tab = this._navigator.tabs.getSelected();
         this._navigator.tabs.setSelectedTab(param1);
         var _loc6_:Tab = this._navigator.tabs.getSelected();
         ErrorReportStorage.addDebugData("StartSearch","Start search " + _loc5_.id + " => " + _loc6_.id);
         this.var_1162 = _loc5_ != _loc6_;
         if(_loc5_ != _loc6_)
         {
            _loc6_.tabPageDecorator.tabSelected();
         }
         this._navigator.data.startLoading();
         if(param4 == const_487)
         {
            this._navigator.send(this.getSearchMsg(param2,param3));
         }
         else if(param4 == const_832)
         {
            this._navigator.send(new GetPopularRoomTagsMessageComposer());
         }
         else
         {
            this._navigator.send(new GetOfficialRoomsMessageComposer());
         }
         if(!this.isOpen())
         {
            this.open();
            this.var_604 = const_650;
            this.var_204.blend = 0;
            if(this.var_225.visible)
            {
               this.var_225.blend = 0;
               this.var_251.blend = 0;
            }
         }
         else
         {
            this.var_604 = const_1021;
         }
         this.var_1442 = 0;
         this._navigator.registerUpdateReceiver(this,2);
         this.sendTrackingEvent(param2);
      }
      
      private function sendTrackingEvent(param1:int) : void
      {
         switch(param1)
         {
            case Tabs.const_489:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS));
               break;
            case Tabs.const_908:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES));
               break;
            case Tabs.const_948:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS));
               break;
            case Tabs.const_799:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY));
               break;
            case Tabs.const_276:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS));
               break;
            case Tabs.const_963:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS));
               break;
            case Tabs.const_383:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS));
               break;
            case Tabs.const_777:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE));
               break;
            case Tabs.const_859:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE));
               break;
            case Tabs.const_441:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH));
               break;
            case Tabs.const_295:
               this._navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH));
         }
      }
      
      private function getSearchMsg(param1:int, param2:String) : IMessageComposer
      {
         if(param1 == Tabs.const_908)
         {
            return new MyFavouriteRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_948)
         {
            return new MyFriendsRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_799)
         {
            return new MyRoomHistorySearchMessageComposer();
         }
         if(param1 == Tabs.const_276)
         {
            return new MyRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_383)
         {
            return new PopularRoomsSearchMessageComposer(param2,this._navigator.data.adIndex);
         }
         if(param1 == Tabs.const_777)
         {
            return new RoomsWhereMyFriendsAreSearchMessageComposer();
         }
         if(param1 == Tabs.const_859)
         {
            return new RoomsWithHighestScoreSearchMessageComposer(this._navigator.data.adIndex);
         }
         if(param1 == Tabs.const_441)
         {
            return new RoomTagSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_295)
         {
            return new RoomTextSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_489)
         {
            return new LatestEventsSearchMessageComposer(param2,this._navigator.data.adIndex);
         }
         Logger.log("No message for searchType: " + param1);
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:Number = NaN;
         if(this.var_204 == null)
         {
            return;
         }
         var _loc2_:Number = param1 / 150;
         if(this.var_604 == const_1021)
         {
            _loc3_ = Math.min(1,Math.max(0,this.var_204.blend - _loc2_));
            this.var_204.blend = _loc3_;
            this.var_225.blend = !!this.var_1162 ? Number(_loc3_) : Number(1);
            this.var_251.blend = !!this.var_1162 ? Number(_loc3_) : Number(1);
            if(_loc3_ == 0)
            {
               this.var_604 = const_650;
            }
         }
         else if(this.var_604 == const_650)
         {
            if(this.var_1442 % 10 == 1)
            {
               this.var_1441.visible = !this.var_1441.visible;
            }
            ++this.var_1442;
            if(!this._navigator.data.isLoading())
            {
               this.var_604 = const_1020;
            }
         }
         else if(this.var_604 == const_1020)
         {
            this.refresh();
            this.var_604 = const_1440;
         }
         else
         {
            this.var_1441.visible = false;
            _loc3_ = Math.min(1,Math.max(0,this.var_204.blend + _loc2_));
            this.var_204.blend = _loc3_;
            this.var_225.blend = !!this.var_1162 ? Number(_loc3_) : Number(1);
            this.var_251.blend = !!this.var_1162 ? Number(_loc3_) : Number(1);
            if(this.var_204.blend >= 1)
            {
               this._navigator.removeUpdateReceiver(this);
            }
         }
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         var _loc2_:IWindow = param1.target;
         if(_loc2_ != this.var_17)
         {
            return;
         }
         if(!this.var_499.running)
         {
            this.var_499.reset();
            this.var_499.start();
         }
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         this.refreshScrollbar(this.var_946);
         this.refreshScrollbar(this.var_947);
      }
      
      private function refreshScrollbar(param1:IViewCtrl) : void
      {
         if(param1.content == null || !param1.content.visible)
         {
            return;
         }
         var _loc2_:IItemListWindow = IItemListWindow(param1.content.findChildByName("item_list"));
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         var _loc4_:* = _loc2_.scrollableRegion.height > _loc2_.height;
         if(_loc3_.visible)
         {
            if(_loc4_)
            {
               return;
            }
            _loc3_.visible = false;
            _loc2_.width += SCROLLBAR_WIDTH;
         }
         else
         {
            if(!_loc4_)
            {
               return;
            }
            _loc3_.visible = true;
            _loc2_.width -= SCROLLBAR_WIDTH;
         }
      }
      
      public function stretchNewEntryIfNeeded(param1:IViewCtrl, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         if(_loc3_.visible)
         {
            return;
         }
         param2.width += SCROLLBAR_WIDTH;
      }
      
      private function refreshToHotelViewButton(param1:Boolean) : void
      {
         this._navigator.refreshButton(this.var_747,"icon_hotelview",!param1,null,0);
         this._navigator.refreshButton(this.var_747,"icon_hotelview_reactive",param1,null,0);
      }
      
      private function onHotelViewMouseOver(param1:WindowEvent) : void
      {
         this.refreshToHotelViewButton(true);
      }
      
      private function onHotelViewMouseOut(param1:WindowEvent) : void
      {
         this.refreshToHotelViewButton(false);
      }
      
      private function onHotelViewMouseClick(param1:WindowEvent) : void
      {
         this._navigator.send(new QuitMessageComposer());
      }
   }
}
