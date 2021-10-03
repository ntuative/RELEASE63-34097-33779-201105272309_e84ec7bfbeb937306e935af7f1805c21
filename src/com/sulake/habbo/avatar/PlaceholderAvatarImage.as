package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_795:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1102)
         {
            _structure = null;
            _assets = null;
            var_267 = null;
            var_289 = null;
            var_690 = null;
            var_577 = null;
            var_337 = null;
            if(!var_1365 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_815 = null;
            var_1102 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_795[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_795[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_391:
               switch(_loc3_)
               {
                  case AvatarAction.const_741:
                  case AvatarAction.const_497:
                  case AvatarAction.const_416:
                  case AvatarAction.const_895:
                  case AvatarAction.const_408:
                  case AvatarAction.const_684:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_351:
            case AvatarAction.const_892:
            case AvatarAction.const_263:
            case AvatarAction.const_800:
            case AvatarAction.const_982:
            case AvatarAction.const_694:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
