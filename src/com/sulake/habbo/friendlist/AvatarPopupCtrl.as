package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class AvatarPopupCtrl extends PopupCtrl
   {
       
      
      private var var_796:Boolean;
      
      private var var_1892:String;
      
      private var var_2630:String;
      
      private var var_2631:String;
      
      private var var_1894:String;
      
      private var var_1893:String;
      
      public function AvatarPopupCtrl(param1:HabboFriendList)
      {
         super(param1,5,-5,"avatar_popup");
      }
      
      public function setData(param1:Boolean, param2:String, param3:String, param4:String, param5:String, param6:String = "") : void
      {
         this.var_796 = param1;
         this.var_1892 = param2;
         this.var_2630 = param3;
         this.var_2631 = param4;
         this.var_1893 = param5;
         this.var_1894 = param6;
      }
      
      override public function refreshContent(param1:IWindowContainer) : void
      {
         Util.hideChildren(param1);
         if(this.var_1894 != "")
         {
            friendList.refreshText(param1,"name_text_online",this.var_796,this.var_1894);
         }
         else
         {
            friendList.refreshText(param1,"name_text_online",this.var_796,this.var_1892);
         }
         friendList.refreshText(param1,"name_text_offline",!this.var_796,this.var_1892);
         friendList.refreshText(param1,"motto_text",this.var_796,this.var_2630);
         friendList.refreshButton(param1,"offline",!this.var_796,null,0);
         if(this.var_796)
         {
            this.refreshFigure(param1,this.var_2631);
            param1.findChildByName("online_text").visible = true;
         }
         else
         {
            param1.findChildByName("last_access_text").visible = true;
            friendList.registerParameter("friendlist.avatarpopup.lastaccess","last_access",this.var_1893 == null ? "" : this.var_1893);
         }
         param1.height = Util.getLowestPoint(param1) + 10;
      }
      
      private function refreshFigure(param1:IWindowContainer, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.getChildByName(HabboFriendList.const_175) as IBitmapWrapperWindow;
         if(_loc3_ == null)
         {
            return;
         }
         if(param2 == null || param2 == "")
         {
            _loc3_.visible = false;
         }
         else
         {
            _loc3_.bitmap = friendList.getAvatarFaceBitmap(param2);
            if(_loc3_.bitmap == null)
            {
               return;
            }
            _loc3_.width = _loc3_.bitmap.width;
            _loc3_.height = _loc3_.bitmap.height;
            _loc3_.visible = true;
         }
      }
   }
}
