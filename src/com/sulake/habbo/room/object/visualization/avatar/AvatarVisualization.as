package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_939:String = "avatar";
      
      private static const const_602:Number = -0.01;
      
      private static const const_601:Number = -0.409;
      
      private static const const_941:int = 2;
      
      private static const const_1270:Array = [0,0,0];
      
      private static const const_1268:int = 3;
       
      
      private var var_584:AvatarVisualizationData = null;
      
      private var var_501:Map;
      
      private var var_491:Map;
      
      private var var_1136:int = 0;
      
      private var var_937:Boolean;
      
      private var var_569:String;
      
      private var var_873:String;
      
      private var var_1137:int = 0;
      
      private var var_586:BitmapDataAsset;
      
      private var var_888:BitmapDataAsset;
      
      private var var_1712:int = -1;
      
      private var var_1715:int = -1;
      
      private var var_1718:int = -1;
      
      private const const_940:int = 0;
      
      private const const_1716:int = 1;
      
      private const const_1702:int = 2;
      
      private const const_1701:int = 3;
      
      private const const_1269:int = 4;
      
      private var var_1632:int = -1;
      
      private var var_252:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1714:Boolean = false;
      
      private var var_1716:Boolean = false;
      
      private var _isSleeping:Boolean = false;
      
      private var var_1367:Boolean = false;
      
      private var var_572:Boolean = false;
      
      private var var_1364:int = 0;
      
      private var var_1365:int = 0;
      
      private var var_2138:int = 0;
      
      private var var_721:int = 0;
      
      private var var_722:int = 0;
      
      private var var_585:int = 0;
      
      private var var_1366:int = 0;
      
      private var var_1093:Boolean = false;
      
      private var var_1717:Boolean = false;
      
      private var var_1094:int = 0;
      
      private var var_723:int = 0;
      
      private var var_1713:Boolean = false;
      
      private var var_1095:int = 0;
      
      private var var_57:IAvatarImage = null;
      
      private var var_754:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_501 = new Map();
         this.var_491 = new Map();
         this.var_937 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_501 != null)
         {
            this.resetImages();
            this.var_501.dispose();
            this.var_491.dispose();
            this.var_501 = null;
         }
         this.var_584 = null;
         this.var_586 = null;
         this.var_888 = null;
         super.dispose();
         this.var_754 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_754;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_584 = param1 as AvatarVisualizationData;
         createSprites(this.const_1269);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_167)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_221) > 0 && param3);
            if(_loc5_ != this.var_1714)
            {
               this.var_1714 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_359) > 0;
            if(_loc5_ != this.var_1716)
            {
               this.var_1716 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_341) > 0;
            if(_loc5_ != this._isSleeping)
            {
               this._isSleeping = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_851) > 0 && param3);
            if(_loc5_ != this.var_1367)
            {
               this.var_1367 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1081) > 0;
            if(_loc5_ != this.var_572)
            {
               this.var_572 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_219);
            if(_loc6_ != this.var_1364)
            {
               this.var_1364 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_335);
            if(_loc7_ != this.var_252)
            {
               this.var_252 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_904);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1153);
            if(_loc6_ != this.var_1365)
            {
               this.var_1365 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_484);
            if(_loc6_ != this.var_721)
            {
               this.var_721 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_580);
            if(_loc6_ != this.var_722)
            {
               this.var_722 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_353);
            if(_loc6_ != this.var_585)
            {
               this.var_585 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_294);
            if(_loc6_ != this.var_1712)
            {
               this.var_1712 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_722 > 0 && param1.getNumber(RoomObjectVariableEnum.const_353) > 0)
            {
               if(this.var_585 != this.var_722)
               {
                  this.var_585 = this.var_722;
                  _loc4_ = true;
               }
            }
            else if(this.var_585 != 0)
            {
               this.var_585 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_801);
            if(_loc6_ != this.var_1094)
            {
               this.var_1094 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1051);
            if(_loc7_ != this.var_873)
            {
               this.var_873 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_190);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_167 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_569 != param1)
         {
            this.var_569 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_501)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_491)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_501.reset();
         this.var_491.reset();
         this.var_57 = null;
         _loc2_ = getSprite(this.const_940);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1367 = false;
         }
         if(this.var_252 == "sit" || this.var_252 == "lay")
         {
            this.var_1366 = param1 / 2;
         }
         else
         {
            this.var_1366 = 0;
         }
         this.var_1717 = false;
         this.var_1093 = false;
         if(this.var_252 == "lay")
         {
            this.var_1093 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1717 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_501.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_491.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_584.getAvatar(this.var_569,param1,this.var_873,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_501.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_491.length >= const_1268)
                  {
                     this.var_491.remove(this.var_491.getKeys().shift());
                  }
                  this.var_491.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_445 != param1.getUpdateID() || this.var_1632 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1712;
            if(this.var_252 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1715 || param4)
            {
               _loc5_ = true;
               this.var_1715 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_57.setDirectionAngle(AvatarSetType.const_35,_loc6_);
            }
            if(_loc7_ != this.var_1718 || param4)
            {
               _loc5_ = true;
               this.var_1718 = _loc7_;
               if(this.var_1718 != this.var_1715)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_57.setDirectionAngle(AvatarSetType.const_51,_loc7_);
               }
            }
            var_445 = param1.getUpdateID();
            this.var_1632 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1716);
         this.var_586 = null;
         if(this.var_252 == "mv" || this.var_252 == "std")
         {
            _loc2_.visible = true;
            if(this.var_586 == null || param1 != var_185)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_586 = this.var_57.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_586 = this.var_57.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_586 != null)
               {
                  _loc2_.asset = this.var_586.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_586 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_888 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1702);
         if(this.var_572)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_888 = this.var_584.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_888 = this.var_584.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_252 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_252 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_888 != null)
            {
               _loc2_.asset = this.var_888.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1701);
         if(this.var_1094 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_584.getAvatarRendererAsset("number_" + this.var_1094 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_584.getAvatarRendererAsset("number_" + this.var_1094 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_252 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_252 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_723 = 1;
               this.var_1713 = true;
               this.var_1095 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_723 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1701);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1713)
         {
            ++this.var_1095;
            if(this.var_1095 < 10)
            {
               return false;
            }
            if(this.var_723 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1095 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_723 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_723 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_723 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_723 = 0;
               this.var_1713 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_584 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = this.var_721;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc12_ || _loc6_ != var_185 || this.var_57 == null)
         {
            if(_loc6_ != var_185)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc10_ != this.var_721)
            {
               _loc11_ = true;
            }
            if(_loc8_ || this.var_57 == null || _loc11_)
            {
               this.var_57 = this.getAvatarImage(_loc6_,this.var_721);
               if(this.var_57 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc15_ = getSprite(this.const_940);
               if(_loc15_ && this.var_57 && this.var_57.isPlaceholder())
               {
                  _loc15_.alpha = 150;
               }
               else if(_loc15_)
               {
                  _loc15_.alpha = 255;
               }
            }
            if(this.var_57 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_57);
            var_185 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc13_:Boolean = _loc9_ || _loc12_ || _loc8_;
         var _loc14_:Boolean = (this.var_937 || this.var_1137 > 0) && param3;
         if(_loc13_)
         {
            this.var_1137 = const_941;
         }
         if(_loc13_ || _loc14_)
         {
            increaseUpdateId();
            --this.var_1137;
            --this.var_1136;
            if(!(this.var_1136 <= 0 || _loc8_ || _loc12_ || _loc7_))
            {
               return;
            }
            this.var_57.updateAnimationByFrames(1);
            this.var_1136 = const_941;
            _loc17_ = this.var_57.getCanvasOffsets();
            if(_loc17_ == null || _loc17_.length < 3)
            {
               _loc17_ = const_1270;
            }
            _loc16_ = getSprite(this.const_940);
            if(_loc16_ != null)
            {
               _loc20_ = this.var_57.getImage(AvatarSetType.const_35,false);
               if(_loc20_ != null)
               {
                  _loc16_.asset = _loc20_;
               }
               if(_loc16_.asset)
               {
                  _loc16_.offsetX = -1 * _loc6_ / 2 + _loc17_[0];
                  _loc16_.offsetY = -_loc16_.asset.height + _loc6_ / 4 + _loc17_[1] + this.var_1366;
               }
               if(this.var_1093)
               {
                  if(this.var_1717)
                  {
                     _loc16_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc16_.relativeDepth = const_601 + _loc17_[2];
                  }
               }
               else
               {
                  _loc16_.relativeDepth = const_602 + _loc17_[2];
               }
            }
            _loc16_ = getSprite(this.const_1702);
            if(_loc16_ != null && _loc16_.visible)
            {
               if(!this.var_1093)
               {
                  _loc16_.relativeDepth = const_602 - 0.01 + _loc17_[2];
               }
               else
               {
                  _loc16_.relativeDepth = const_601 - 0.01 + _loc17_[2];
               }
            }
            this.var_937 = this.var_57.isAnimating();
            _loc18_ = this.const_1269;
            for each(_loc19_ in this.var_57.getSprites())
            {
               if(_loc19_.id == const_939)
               {
                  _loc16_ = getSprite(this.const_940);
                  _loc21_ = this.var_57.getLayerData(_loc19_);
                  _loc22_ = _loc19_.getDirectionOffsetX(this.var_57.getDirection());
                  _loc23_ = _loc19_.getDirectionOffsetY(this.var_57.getDirection());
                  if(_loc21_ != null)
                  {
                     _loc22_ += _loc21_.dx;
                     _loc23_ += _loc21_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  _loc16_.offsetX += _loc22_;
                  _loc16_.offsetY += _loc23_;
               }
               else
               {
                  _loc16_ = getSprite(_loc18_);
                  if(_loc16_ != null)
                  {
                     _loc16_.capturesMouse = false;
                     _loc16_.visible = true;
                     _loc24_ = this.var_57.getLayerData(_loc19_);
                     _loc25_ = 0;
                     _loc26_ = _loc19_.getDirectionOffsetX(this.var_57.getDirection());
                     _loc27_ = _loc19_.getDirectionOffsetY(this.var_57.getDirection());
                     _loc28_ = _loc19_.getDirectionOffsetZ(this.var_57.getDirection());
                     _loc29_ = 0;
                     if(_loc19_.hasDirections)
                     {
                        _loc29_ = this.var_57.getDirection();
                     }
                     if(_loc24_ != null)
                     {
                        _loc25_ = _loc24_.animationFrame;
                        _loc26_ += _loc24_.dx;
                        _loc27_ += _loc24_.dy;
                        _loc29_ += _loc24_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc26_ /= 2;
                        _loc27_ /= 2;
                     }
                     if(_loc29_ < 0)
                     {
                        _loc29_ += 8;
                     }
                     else if(_loc29_ > 7)
                     {
                        _loc29_ -= 8;
                     }
                     _loc30_ = this.var_57.getScale() + "_" + _loc19_.member + "_" + _loc29_ + "_" + _loc25_;
                     _loc31_ = this.var_57.getAsset(_loc30_);
                     if(_loc31_ == null)
                     {
                        continue;
                     }
                     _loc16_.asset = _loc31_.content as BitmapData;
                     _loc16_.offsetX = -_loc31_.offset.x - _loc6_ / 2 + _loc26_;
                     _loc16_.offsetY = -_loc31_.offset.y + _loc27_ + this.var_1366;
                     if(this.var_1093)
                     {
                        _loc16_.relativeDepth = const_601 - 0.001 * spriteCount * _loc28_;
                     }
                     else
                     {
                        _loc16_.relativeDepth = const_602 - 0.001 * spriteCount * _loc28_;
                     }
                     if(_loc19_.ink == 33)
                     {
                        _loc16_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc16_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc18_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_377,this.var_252,this._postureParameter);
         if(this.var_1364 > 0)
         {
            param1.appendAction(AvatarAction.const_278,AvatarAction.const_1426[this.var_1364]);
         }
         if(this.var_1365 > 0)
         {
            param1.appendAction(AvatarAction.const_857,this.var_1365);
         }
         if(this.var_2138 > 0)
         {
            param1.appendAction(AvatarAction.const_745,this.var_2138);
         }
         if(this.var_722 > 0)
         {
            param1.appendAction(AvatarAction.const_758,this.var_722);
         }
         if(this.var_585 > 0)
         {
            param1.appendAction(AvatarAction.const_907,this.var_585);
         }
         if(this.var_1714)
         {
            param1.appendAction(AvatarAction.const_284);
         }
         if(this._isSleeping || this.var_1367)
         {
            param1.appendAction(AvatarAction.const_463);
         }
         if(this.var_1716)
         {
            param1.appendAction(AvatarAction.const_240);
         }
         if(this.var_721 > 0)
         {
            param1.appendAction(AvatarAction.const_292,this.var_721);
         }
         param1.endActionAppends();
         this.var_937 = param1.isAnimating();
         var _loc2_:int = this.const_1269;
         for each(_loc3_ in this.var_57.getSprites())
         {
            if(_loc3_.id != const_939)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
