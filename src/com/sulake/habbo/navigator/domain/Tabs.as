package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_332:int = 1;
      
      public static const const_197:int = 2;
      
      public static const const_260:int = 3;
      
      public static const const_335:int = 4;
      
      public static const const_191:int = 5;
      
      public static const const_383:int = 1;
      
      public static const const_859:int = 2;
      
      public static const const_948:int = 3;
      
      public static const const_777:int = 4;
      
      public static const const_276:int = 5;
      
      public static const const_908:int = 6;
      
      public static const const_799:int = 7;
      
      public static const const_295:int = 8;
      
      public static const const_441:int = 9;
      
      public static const const_2083:int = 10;
      
      public static const const_963:int = 11;
      
      public static const const_489:int = 12;
       
      
      private var var_437:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_437 = new Array();
         this.var_437.push(new Tab(this._navigator,const_332,const_489,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_487));
         this.var_437.push(new Tab(this._navigator,const_197,const_383,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_487));
         this.var_437.push(new Tab(this._navigator,const_335,const_963,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1129));
         this.var_437.push(new Tab(this._navigator,const_260,const_276,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_487));
         this.var_437.push(new Tab(this._navigator,const_191,const_295,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_832));
         this.setSelectedTab(const_332);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_335;
      }
      
      public function get tabs() : Array
      {
         return this.var_437;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_437)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_437)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_437)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
