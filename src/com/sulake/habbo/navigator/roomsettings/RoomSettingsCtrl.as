package com.sulake.habbo.navigator.roomsettings
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ICheckBoxWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IRadioButtonWindow;
   import com.sulake.core.window.components.ISelectorWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.FlatControllerData;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.RoomSettingsData;
   import com.sulake.habbo.communication.messages.outgoing.room.action.RemoveAllRightsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.action.RemoveRightsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.roomsettings.DeleteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.roomsettings.GetRoomSettingsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.roomsettings.SaveRoomSettingsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.roomsettings.SaveableRoomSettingsData;
   import com.sulake.habbo.communication.messages.parser.roomsettings.RoomSettingsSaveErrorMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.TextFieldManager;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.geom.Rectangle;
   
   public class RoomSettingsCtrl
   {
       
      
      private var var_1576:Boolean;
      
      private var _owner:IRoomSettingsCtrlOwner;
      
      private var var_385:int;
      
      private var _navigator:HabboNavigator;
      
      private var var_53:RoomSettingsData;
      
      private var var_1296:int;
      
      private var _window:IWindowContainer;
      
      private var _active:Boolean;
      
      private var var_2010:Boolean;
      
      private var var_830:Boolean;
      
      private var var_829:TextFieldManager;
      
      private var var_1299:TextFieldManager;
      
      private var var_938:TextFieldManager;
      
      private var var_939:TextFieldManager;
      
      private var var_1043:TextFieldManager;
      
      private var var_1297:TextFieldManager;
      
      private var var_1298:ICheckBoxWindow;
      
      private var var_1295:ICheckBoxWindow;
      
      private var var_1301:ICheckBoxWindow;
      
      private var var_831:ICheckBoxWindow;
      
      private var var_2011:ITextWindow;
      
      private var var_1044:IDropMenuWindow;
      
      private var var_1045:IDropMenuWindow;
      
      private var var_2829:IWindowContainer;
      
      private var var_1302:IWindowContainer;
      
      private var var_1303:IWindowContainer;
      
      private var var_2009:IWindowContainer;
      
      private var var_1575:IWindowContainer;
      
      private var var_235:IWindowContainer;
      
      private var var_1300:IWindowContainer;
      
      private var var_1577:ITextWindow;
      
      public function RoomSettingsCtrl(param1:HabboNavigator, param2:IRoomSettingsCtrlOwner, param3:Boolean)
      {
         super();
         this._navigator = param1;
         this._owner = param2;
         this.var_1576 = param3;
      }
      
      public function set active(param1:Boolean) : void
      {
         this._active = param1;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function resetView() : void
      {
         this.var_830 = false;
      }
      
      public function load(param1:int) : void
      {
         this.var_385 = param1;
         this._navigator.send(new GetRoomSettingsMessageComposer(this.var_385));
         if(this.var_1300 != null)
         {
            this.var_1300.visible = false;
         }
      }
      
      public function onRoomSettings(param1:RoomSettingsData) : void
      {
         if(param1.roomId != this.var_385)
         {
            return;
         }
         this.var_53 = param1;
         this._active = true;
         this.var_2010 = true;
         this._owner.roomSettingsRefreshNeeded();
      }
      
      public function onFlatControllerAdded(param1:int, param2:FlatControllerData) : void
      {
         if(param1 != this.var_385)
         {
            return;
         }
         if(this.var_53 == null)
         {
            return;
         }
         if(!this.controllerExists(param2.userId))
         {
            this.var_53.controllers.splice(0,0,param2);
            ++this.var_53.controllerCount;
         }
         if(this.var_830)
         {
            this._owner.roomSettingsRefreshNeeded();
         }
      }
      
      private function controllerExists(param1:int) : Boolean
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_53.controllers.length)
         {
            _loc3_ = this.var_53.controllers[_loc2_];
            if(_loc3_.userId == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function onFlatControllerRemoved(param1:int, param2:int) : void
      {
         var _loc4_:* = null;
         if(param1 != this.var_385)
         {
            return;
         }
         if(this.var_53 == null)
         {
            return;
         }
         --this.var_53.controllerCount;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_53.controllers.length)
         {
            _loc4_ = this.var_53.controllers[_loc3_];
            if(_loc4_.userId == param2)
            {
               this.var_53.controllers.splice(_loc3_,1);
            }
            else
            {
               _loc3_++;
            }
         }
         if(this.var_830)
         {
            this._owner.roomSettingsRefreshNeeded();
         }
      }
      
      public function onRoomSettingsSaved(param1:int) : void
      {
         if(param1 != this.var_385 || this.var_1296 < 1)
         {
            return;
         }
         this.close();
         this._owner.roomSettingsRefreshNeeded();
      }
      
      public function onRoomSettingsSaveError(param1:int, param2:int, param3:String) : void
      {
         if(param1 != this.var_385 || this.var_1296 < 1)
         {
            return;
         }
         this.var_1296 = 0;
         if(param2 == RoomSettingsSaveErrorMessageParser.const_1716)
         {
            this.var_829.displayError("${navigator.roomsettings.roomnameismandatory}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1667)
         {
            this.var_829.displayError("${navigator.roomsettings.unacceptablewords}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1861)
         {
            this.var_1299.displayError("${navigator.roomsettings.unacceptablewords}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1789)
         {
            this.setTagError(this.var_938,param3,"${navigator.roomsettings.unacceptablewords}");
            this.setTagError(this.var_939,param3,"${navigator.roomsettings.unacceptablewords}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1926)
         {
            this.setTagError(this.var_938,param3,"${navigator.roomsettings.nonuserchoosabletag}");
            this.setTagError(this.var_939,param3,"${navigator.roomsettings.nonuserchoosabletag}");
         }
         else if(param2 == RoomSettingsSaveErrorMessageParser.const_1923)
         {
            this.var_1043.displayError("${navigator.roomsettings.passwordismandatory}");
         }
         else
         {
            this.var_829.displayError("Update failed: error " + param2);
         }
      }
      
      private function setTagError(param1:TextFieldManager, param2:String, param3:String) : void
      {
         if(param2 == param1.getText().toLowerCase())
         {
            param1.displayError(param3);
         }
      }
      
      public function close() : void
      {
         this._active = false;
         this.var_385 = 0;
         this.var_53 = null;
         this.var_1296 = 0;
      }
      
      private function clearErrors() : void
      {
         this.var_829.clearErrors();
         this.var_1299.clearErrors();
         this.var_938.clearErrors();
         this.var_939.clearErrors();
         this.var_1043.clearErrors();
         this.var_1297.clearErrors();
      }
      
      private function prepareWindow(param1:IWindowContainer) : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("ros_room_settings"));
         param1.addChildAt(this._window,0);
         var _loc2_:IRadioButtonWindow = this._window.findChildByName("doormode_password") as IRadioButtonWindow;
         _loc2_.addEventListener(WindowEvent.const_308,this.onDoorModePasswordSelect);
         _loc2_.addEventListener(WindowEvent.const_604,this.onDoorModePasswordUnselect);
         this.getSaveButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onSaveButtonClick);
         this.getCancelButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCancelButtonClick);
         this.getDeleteButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onDeleteButtonClick);
         this.getEditThumbnailButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onEditThumbnailButtonClick);
         this.getRemoveAllFlatCtrlsButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onRemoveAllFlatCtrlsClick);
         this.getRemoveFlatCtrlsButton().addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onRemoveFlatCtrlClick);
         this.var_829 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("room_name")),60);
         this.var_1299 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("description")),255);
         this.var_938 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("tag1")),30);
         this.var_939 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("tag2")),30);
         this.var_1043 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("password")),30);
         this.var_1297 = new TextFieldManager(this._navigator,ITextFieldWindow(this._window.findChildByName("password_confirm")),30);
         this.var_1298 = ICheckBoxWindow(this._window.findChildByName("allow_pets_checkbox"));
         this.var_1295 = ICheckBoxWindow(this._window.findChildByName("allow_foodconsume_checkbox"));
         this.var_1301 = ICheckBoxWindow(this._window.findChildByName("allow_walk_through_checkbox"));
         this.var_831 = ICheckBoxWindow(this._window.findChildByName("hide_walls_checkbox"));
         this.var_2011 = this._window.findChildByName("hide_walls_text") as ITextWindow;
         this.var_1044 = IDropMenuWindow(this._window.findChildByName("wall_thickness"));
         this.var_1045 = IDropMenuWindow(this._window.findChildByName("floor_thickness"));
         this.var_2829 = IWindowContainer(this._window.findChildByName("thumbnail_container"));
         this.var_1302 = IWindowContainer(this._window.findChildByName("basic_settings_container"));
         this.var_1303 = IWindowContainer(this._window.findChildByName("advanced_settings_container"));
         this.var_2009 = IWindowContainer(this._window.findChildByName("switch_view_container"));
         this.var_1575 = IWindowContainer(this._window.findChildByName("footer_container"));
         this.var_235 = IWindowContainer(this._window.findChildByName("flat_controllers_container"));
         this.var_1300 = IWindowContainer(this._window.findChildByName("password_container"));
         this.var_1577 = ITextWindow(this._window.findChildByName("switch_view_text"));
         this.var_1577.mouseThreshold = 0;
         this.var_1577.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onSwitchView);
         this.var_1300.visible = false;
         if(!this.var_1576)
         {
            this._window.color = 4294967295;
            Util.setColors(this._window,4278190080);
         }
      }
      
      private function getSaveButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("save"));
      }
      
      private function getCancelButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("cancel"));
      }
      
      private function getDeleteButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("delete"));
      }
      
      private function getEditThumbnailButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("edit_thumbnail"));
      }
      
      private function getRemoveAllFlatCtrlsButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("remove_all_flat_ctrls"));
      }
      
      private function getRemoveFlatCtrlsButton() : IButtonWindow
      {
         return IButtonWindow(this._window.findChildByName("remove_flat_ctrl"));
      }
      
      public function refresh(param1:IWindowContainer) : void
      {
         if(!this._active)
         {
            return;
         }
         this.prepareWindow(param1);
         Util.hideChildren(this._window);
         this.var_2009.visible = this.var_1576;
         this.populateForm();
         if(this.var_830)
         {
            this.var_1303.visible = true;
            this.var_1575.visible = true;
            this.refreshFlatControllers();
            this.var_1303.height = Util.getLowestPoint(this.var_1303) + 4;
         }
         else
         {
            this.var_1302.visible = true;
            this.var_1575.visible = true;
            this.var_2829.visible = this.var_1576;
            this.var_1302.height = Util.getLowestPoint(this.var_1302) + 4;
         }
         this.var_1577.text = !!this.var_830 ? "${navigator.roomsettings.tobasicsettings}" : "${navigator.roomsettings.toadvancedsettings}";
         Util.moveChildrenToColumn(this._window,[this.var_1302.name,this.var_1303.name,this.var_1575.name,this.var_2009.name],0,0);
         this._window.height = Util.getLowestPoint(this._window) + 4;
         this._window.visible = true;
      }
      
      private function disableWindow(param1:IWindow) : void
      {
         if(param1 != null)
         {
            param1.disable();
            param1.blend = 0.5;
         }
      }
      
      private function enableWindow(param1:IWindow) : void
      {
         if(param1 != null)
         {
            param1.enable();
            param1.blend = 1;
         }
      }
      
      private function getThicknessSelectionIndex(param1:int) : int
      {
         switch(param1)
         {
            case -2:
               return 0;
            case -1:
               return 1;
            case 1:
               return 3;
            default:
               return 2;
         }
      }
      
      private function populateForm() : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(!this.var_2010)
         {
            return;
         }
         this.var_2010 = false;
         var _loc1_:RoomSettingsData = this.var_53;
         this.var_829.setText(_loc1_.name);
         this.var_1299.setText(_loc1_.description);
         this.var_1043.setText("");
         this.var_1297.setText("");
         var _loc2_:ISelectorWindow = this._window.findChildByName("doormode") as ISelectorWindow;
         var _loc3_:IRadioButtonWindow = this._window.findChildByName("doormode_password") as IRadioButtonWindow;
         switch(_loc1_.doorMode)
         {
            case RoomSettingsData.const_207:
               _loc4_ = this._window.findChildByName("doormode_doorbell") as IRadioButtonWindow;
               _loc2_.setSelected(_loc4_);
               break;
            case RoomSettingsData.const_134:
               _loc2_.setSelected(_loc3_);
               break;
            default:
               _loc5_ = this._window.findChildByName("doormode_open") as IRadioButtonWindow;
               _loc2_.setSelected(_loc5_);
         }
         this.changePasswordField(_loc1_.doorMode == RoomSettingsData.const_134);
         Logger.log("CATEGORY ID: " + _loc1_.categoryId);
         this.setCategorySelection(_loc1_.categoryId);
         this.refreshMaxVisitors(_loc1_);
         this.setTag(this.var_938,_loc1_.tags[0]);
         this.setTag(this.var_939,_loc1_.tags[1]);
         if(this.var_1298)
         {
            if(_loc1_.allowPets)
            {
               this.var_1298.select();
            }
            else
            {
               this.var_1298.unselect();
            }
         }
         if(this.var_1295)
         {
            if(_loc1_.allowFoodConsume)
            {
               this.var_1295.select();
            }
            else
            {
               this.var_1295.unselect();
            }
         }
         if(this.var_1301)
         {
            if(_loc1_.allowWalkThrough)
            {
               this.var_1301.select();
            }
            else
            {
               this.var_1301.unselect();
            }
         }
         if(!this.VIPFeaturesAllowed())
         {
            this.disableWindow(this.var_831);
            this.disableWindow(this.var_1044);
            this.disableWindow(this.var_1045);
            this.disableWindow(this.var_2011);
         }
         else
         {
            this.enableWindow(this.var_831);
            this.enableWindow(this.var_1044);
            this.enableWindow(this.var_1045);
            this.enableWindow(this.var_2011);
         }
         if(this.var_831)
         {
            if(_loc1_.hideWalls)
            {
               this.var_831.select();
            }
            else
            {
               this.var_831.unselect();
            }
         }
         if(this.var_1044)
         {
            this.var_1044.selection = this.getThicknessSelectionIndex(_loc1_.wallThickness);
         }
         if(this.var_1045)
         {
            this.var_1045.selection = this.getThicknessSelectionIndex(_loc1_.floorThickness);
         }
         this.clearErrors();
      }
      
      private function VIPFeaturesAllowed() : Boolean
      {
         return this._navigator.sessionData.hasUserRight("fuse_hide_room_walls",HabboClubLevelEnum.const_48);
      }
      
      private function setTag(param1:TextFieldManager, param2:String) : void
      {
         param1.setText(param2 == null ? "" : param2);
      }
      
      private function refreshMaxVisitors(param1:RoomSettingsData) : void
      {
         var _loc2_:Array = new Array();
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         var _loc5_:int = 10;
         while(_loc5_ <= param1.maximumVisitorsLimit)
         {
            _loc2_.push("" + _loc5_);
            if(_loc5_ == param1.maximumVisitors)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
            _loc5_ += 5;
         }
         var _loc6_:IDropMenuWindow = this._window.findChildByName("maxvisitors") as IDropMenuWindow;
         _loc6_.populate(_loc2_);
         _loc6_.selection = _loc3_ > -1 ? int(_loc3_) : 0;
      }
      
      private function setCategorySelection(param1:int) : void
      {
         var _loc6_:* = null;
         var _loc2_:IDropMenuWindow = this._window.findChildByName("categories") as IDropMenuWindow;
         var _loc3_:Array = new Array();
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         for each(_loc6_ in this._navigator.data.allCategories)
         {
            if(_loc6_.visible || param1 == _loc6_.nodeId)
            {
               _loc3_.push(_loc6_.nodeName);
               if(param1 == _loc6_.nodeId)
               {
                  _loc4_ = _loc5_;
               }
               _loc5_++;
            }
         }
         _loc2_.populate(_loc3_);
         _loc2_.selection = _loc4_;
      }
      
      private function getFlatCategoryByIndex(param1:int, param2:int) : FlatCategory
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         for each(_loc4_ in this._navigator.data.allCategories)
         {
            if(_loc4_.visible || param1 == _loc4_.nodeId)
            {
               if(param2 == _loc3_)
               {
                  return _loc4_;
               }
               _loc3_++;
            }
         }
         return null;
      }
      
      private function onEditThumbnailButtonClick(param1:WindowMouseEvent) : void
      {
         this._navigator.roomInfoViewCtrl.startThumbnailEdit();
      }
      
      private function onSwitchView(param1:WindowEvent) : void
      {
         this.var_830 = !this.var_830;
         this._owner.roomSettingsRefreshNeeded();
      }
      
      private function onSaveButtonClick(param1:WindowMouseEvent) : void
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(this.var_53 == null || this._window == null || this._window.disposed)
         {
            return;
         }
         var _loc2_:SaveableRoomSettingsData = new SaveableRoomSettingsData();
         _loc2_.roomId = this.var_53.roomId;
         _loc2_.name = this.var_829.getText();
         _loc2_.description = this.var_1299.getText();
         var _loc3_:ISelectorWindow = this._window.findChildByName("doormode") as ISelectorWindow;
         var _loc4_:IWindow = _loc3_.getSelected();
         switch(_loc4_.name)
         {
            case "doormode_doorbell":
               _loc2_.doorMode = RoomSettingsFlatInfo.const_207;
               break;
            case "doormode_password":
               _loc2_.doorMode = RoomSettingsFlatInfo.const_134;
               break;
            default:
               _loc2_.doorMode = RoomSettingsFlatInfo.const_579;
         }
         if(_loc2_.doorMode == RoomSettingsFlatInfo.const_134)
         {
            _loc8_ = this.var_1043.getText();
            _loc9_ = this.var_1297.getText();
            if(_loc8_ != _loc9_)
            {
               this.var_1043.clearErrors();
               this.var_1297.displayError("${navigator.roomsettings.invalidconfirm}");
               return;
            }
            if(_loc8_ != "")
            {
               _loc2_.password = _loc8_;
            }
         }
         var _loc5_:IDropMenuWindow = this._window.findChildByName("categories") as IDropMenuWindow;
         var _loc6_:FlatCategory = this.getFlatCategoryByIndex(this.var_53.categoryId,_loc5_.selection);
         _loc2_.categoryId = _loc6_.nodeId;
         var _loc7_:IDropMenuWindow = this._window.findChildByName("maxvisitors") as IDropMenuWindow;
         _loc2_.maximumVisitors = 10 + _loc7_.selection * 5;
         _loc2_.allowPets = this.var_1298.isSelected;
         _loc2_.allowFoodConsume = this.var_1295.isSelected;
         _loc2_.allowWalkThrough = this.var_1301.isSelected;
         _loc2_.hideWalls = this.var_831.isSelected;
         _loc2_.wallThickness = this.var_1044.selection - 2;
         _loc2_.floorThickness = this.var_1045.selection - 2;
         _loc2_.tags = new Array();
         this.addTag(this.var_938,_loc2_.tags);
         this.addTag(this.var_939,_loc2_.tags);
         this.clearErrors();
         this.var_1296 = _loc2_.roomId;
         this._navigator.send(new SaveRoomSettingsMessageComposer(_loc2_));
      }
      
      private function addTag(param1:TextFieldManager, param2:Array) : void
      {
         if(param1.getText() != "")
         {
            param2.push(param1.getText());
         }
      }
      
      private function onCancelButtonClick(param1:WindowMouseEvent) : void
      {
         this.close();
         this._owner.roomSettingsRefreshNeeded();
      }
      
      private function onDeleteButtonClick(param1:WindowMouseEvent) : void
      {
         Logger.log("[RoomSettingsCtrl.onDeleteButtonClick] " + this.var_385);
         if(this.var_53 == null)
         {
            return;
         }
         this._navigator.registerParameter("navigator.roomsettings.deleteroom.confirm.message","room_name",this.var_53.name);
         var _loc2_:ConfirmDialogView = new ConfirmDialogView(IFrameWindow(this._navigator.getXmlWindow("ros_room_delete_confirm")),this,this.onConfirmRoomDelete,[this.var_385]);
         _loc2_.show();
      }
      
      private function onConfirmRoomDelete(param1:WindowMouseEvent, param2:int) : void
      {
         var _loc3_:* = null;
         this._navigator.send(new DeleteRoomMessageComposer(param2));
         this.close();
         this._owner.roomSettingsRefreshNeeded();
         if(this._navigator.data.guestRoomSearchResults != null)
         {
            _loc3_ = this._navigator.data.guestRoomSearchResults;
            this._navigator.mainViewCtrl.startSearch(this._navigator.tabs.getSelected().id,_loc3_.searchType,_loc3_.searchParam);
         }
      }
      
      private function onDoorModePasswordSelect(param1:WindowEvent) : void
      {
         this.changePasswordField(true);
      }
      
      private function onDoorModePasswordUnselect(param1:WindowEvent) : void
      {
         this.changePasswordField(false);
      }
      
      private function changePasswordField(param1:Boolean) : void
      {
         this.var_1300.visible = param1;
         this._owner.roomSettingsRefreshNeeded();
      }
      
      private function refreshFlatControllers() : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         if(this.var_235 == null || this.var_235.disposed)
         {
            return;
         }
         Util.hideChildren(this.var_235);
         var _loc1_:IWindow = this.var_235.findChildByName("ruler");
         if(_loc1_ != null)
         {
            _loc1_.visible = true;
         }
         var _loc2_:IWindow = this.var_235.findChildByName("flat_ctrls_caption_txt");
         if(_loc2_ != null)
         {
            this._navigator.registerParameter("navigator.roomsettings.flatctrls.caption","cnt","" + this.var_53.controllerCount);
            _loc2_.visible = true;
         }
         var _loc3_:IWindowContainer = IWindowContainer(this.var_235.findChildByName("flat_controller_list"));
         if(_loc3_ != null)
         {
            Util.hideChildren(_loc3_);
            if(this.var_53 != null)
            {
               _loc8_ = false;
               _loc9_ = 0;
               while(_loc9_ < this.var_53.controllers.length)
               {
                  _loc10_ = this.var_53.controllers[_loc9_];
                  this.refreshFlatController(_loc3_,_loc9_,_loc10_);
                  if(_loc10_.selected)
                  {
                     _loc8_ = true;
                  }
                  _loc9_++;
               }
            }
            Util.layoutChildrenInArea(_loc3_,_loc3_.width,15);
            _loc3_.height = Util.getLowestPoint(_loc3_);
            _loc5_ = this.var_235.findChildByName("flat_ctrls_info_txt");
            _loc6_ = this.var_235.findChildByName("flat_ctrls_limit_txt");
            _loc7_ = IWindowContainer(this.var_235.findChildByName("flat_controllers_footer"));
            if(this.var_53 != null && this.var_53.controllers.length > 0)
            {
               _loc3_.visible = true;
               _loc7_.visible = true;
               _loc5_.visible = true;
               if(this.var_53.controllerCount > this.var_53.controllers.length)
               {
                  this._navigator.registerParameter("navigator.roomsettings.flatctrls.limitinfo","cnt","" + this.var_53.controllers.length);
                  _loc6_.visible = true;
               }
               Util.moveChildrenToColumn(this.var_235,["flat_ctrls_caption_txt","flat_ctrls_limit_txt","flat_controller_list","flat_ctrls_info_txt","flat_controllers_footer"],_loc2_.y,5);
            }
            else
            {
               _loc7_.visible = false;
               _loc5_.visible = false;
               _loc7_.y = _loc3_.y + _loc3_.height + 5;
            }
         }
         var _loc4_:IButtonWindow = IButtonWindow(this.var_235.findChildByName("remove_flat_ctrl"));
         if(_loc4_ != null)
         {
            if(_loc8_)
            {
               _loc4_.enable();
            }
            else
            {
               _loc4_.disable();
            }
         }
         this.var_235.height = Util.getLowestPoint(this.var_235);
      }
      
      private function refreshFlatController(param1:IWindowContainer, param2:int, param3:FlatControllerData) : void
      {
         var _loc6_:* = null;
         var _loc4_:String = "fc." + param2;
         var _loc5_:IWindowContainer = IWindowContainer(param1.getChildByName(_loc4_));
         if(param3 == null)
         {
            if(_loc5_ != null)
            {
               _loc5_.visible = false;
            }
         }
         else
         {
            if(_loc5_ == null)
            {
               _loc5_ = this.getFlatControllerContainer(_loc4_);
               param1.addChild(_loc5_);
               _loc5_.addChild(this._navigator.getXmlWindow("ros_flat_controller"));
            }
            _loc6_ = ITextWindow(_loc5_.findChildByName("flat_controller"));
            _loc6_.text = param3.userName;
            _loc6_.id = param3.userId;
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onFlatControllerClick);
            _loc6_.width = _loc6_.textWidth + 5;
            _loc5_.width = _loc6_.width + 3;
            _loc5_.height = _loc6_.height;
            _loc6_.color = !!param3.selected ? 4294967295 : uint(4286216826);
            Logger.log("HUMP: " + param3.userName + ", " + param3.selected + ", " + _loc6_.textBackgroundColor);
            _loc5_.visible = true;
         }
      }
      
      private function getFlatControllerContainer(param1:String) : IWindowContainer
      {
         return IWindowContainer(this._navigator.windowManager.createWindow(param1,"",HabboWindowType.const_83,HabboWindowStyle.const_30,HabboWindowParam.const_66,new Rectangle(0,0,100,20)));
      }
      
      private function onFlatControllerClick(param1:WindowEvent) : void
      {
         var _loc2_:ITextWindow = ITextWindow(param1.target);
         var _loc3_:int = _loc2_.id;
         Logger.log("FC clicked: " + _loc2_.name + ", " + _loc3_);
         var _loc4_:FlatControllerData = this.getFlatCtrl(_loc3_);
         if(_loc4_ == null)
         {
            Logger.log("Couldn\'t find fc: " + _loc3_);
            return;
         }
         _loc4_.selected = !_loc4_.selected;
         this._owner.roomSettingsRefreshNeeded();
      }
      
      private function getFlatCtrl(param1:int) : FlatControllerData
      {
         var _loc2_:* = null;
         if(this.var_53 != null)
         {
            for each(_loc2_ in this.var_53.controllers)
            {
               if(_loc2_.userId == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      private function onRemoveAllFlatCtrlsClick(param1:WindowEvent) : void
      {
         Logger.log("Remove all clicked: ");
         this._navigator.send(new RemoveAllRightsMessageComposer(this.var_385));
      }
      
      private function onRemoveFlatCtrlClick(param1:WindowEvent) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Remove clicked: ");
         if(this.var_53 == null)
         {
            return;
         }
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.var_53.controllers)
         {
            if(_loc3_.selected)
            {
               _loc2_.push(_loc3_.userId);
            }
         }
         _loc4_ = new RemoveRightsMessageComposer(_loc2_);
         this._navigator.send(_loc4_);
      }
   }
}
