package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_81:ITextFieldWindow;
      
      private var var_671:Boolean;
      
      private var var_1591:String = "";
      
      private var include:int;
      
      private var var_1975:Function;
      
      private var var_2781:String = "";
      
      private var var_144:IWindowContainer;
      
      private var var_2779:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2780:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_81 = param2;
         this.include = param3;
         this.var_1975 = param4;
         if(param5 != null)
         {
            this.var_671 = true;
            this.var_1591 = param5;
            this.var_81.text = param5;
         }
         Util.setProcDirectly(this.var_81,this.onInputClick);
         this.var_81.addEventListener(WindowKeyboardEvent.const_210,this.checkEnterPress);
         this.var_81.addEventListener(WindowEvent.const_106,this.checkMaxLen);
         this.var_2779 = this.var_81.textBackground;
         this._orgTextBackgroundColor = this.var_81.textBackgroundColor;
         this.var_2780 = this.var_81.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_81.textBackground = this.var_2779;
         this.var_81.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_81.textColor = this.var_2780;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_81.textBackground = true;
         this.var_81.textBackgroundColor = 4294021019;
         this.var_81.textColor = 4278190080;
         if(this.var_144 == null)
         {
            this.var_144 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_144,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_81.parent).addChild(this.var_144);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_144.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_144.findChildByName("border").width = _loc2_.width + 15;
         this.var_144.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_81.getLocalPosition(_loc3_);
         this.var_144.x = _loc3_.x;
         this.var_144.y = _loc3_.y - this.var_144.height + 3;
         var _loc4_:IWindow = this.var_144.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_144.width / 2 - _loc4_.width / 2;
         this.var_144.x += (this.var_81.width - this.var_144.width) / 2;
         this.var_144.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1591 != null)
         {
            this.var_81.text = this.var_1591;
            this.var_671 = true;
         }
         else
         {
            this.var_81.text = "";
            this.var_671 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_671)
         {
            return this.var_2781;
         }
         return this.var_81.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_671 = false;
         this.var_81.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_144 != null)
         {
            this.var_144.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_81;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_671 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_359)
         {
            return;
         }
         if(!this.var_671)
         {
            return;
         }
         this.var_81.text = this.var_2781;
         this.var_671 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_1975 != null)
            {
               this.var_1975();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_81.text;
         if(_loc2_.length > this.include)
         {
            this.var_81.text = _loc2_.substring(0,this.include);
         }
      }
   }
}
