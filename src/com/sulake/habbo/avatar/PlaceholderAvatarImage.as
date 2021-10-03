package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_762:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_754)
         {
            _structure = null;
            _assets = null;
            var_269 = null;
            var_276 = null;
            var_569 = null;
            var_534 = null;
            var_322 = null;
            if(!var_1250 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_742 = null;
            var_754 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_762[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_762[param1] = param2;
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
            case AvatarAction.const_377:
               switch(_loc3_)
               {
                  case AvatarAction.const_654:
                  case AvatarAction.const_480:
                  case AvatarAction.const_366:
                  case AvatarAction.const_844:
                  case AvatarAction.const_336:
                  case AvatarAction.const_681:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_292:
            case AvatarAction.const_857:
            case AvatarAction.const_240:
            case AvatarAction.const_745:
            case AvatarAction.const_758:
            case AvatarAction.const_907:
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
