package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class SpacesCatalogWidget extends CatalogWidget implements ICatalogWidget, IGetImageListener
   {
      
      private static const const_204:String = "floor";
      
      private static const const_205:String = "wallpaper";
      
      private static const const_94:String = "landscape";
       
      
      private var var_177:XML;
      
      private var var_1282:Array;
      
      private var var_825:Array;
      
      private var var_394:int = 0;
      
      private var var_395:int = 0;
      
      private var var_826:int = 0;
      
      private var var_1548:String = "default";
      
      private var var_1280:Array;
      
      private var _activeFloorPatterns:Array;
      
      private var var_393:int = 0;
      
      private var var_458:int = 0;
      
      private var var_827:int = 0;
      
      private var _floorType:String = "default";
      
      private var var_1281:Array;
      
      private var var_829:Array;
      
      private var var_392:int = 0;
      
      private var var_459:int = 0;
      
      private var var_828:int = 0;
      
      private var var_1550:String = "1.1";
      
      private var var_1549:int = -1;
      
      private var var_1551:int = -1;
      
      private var var_330:BitmapData = null;
      
      private var var_331:BitmapData = null;
      
      public function SpacesCatalogWidget(param1:IWindowContainer)
      {
         this.var_1282 = [];
         this.var_825 = [];
         this.var_1280 = [];
         this._activeFloorPatterns = [];
         this.var_1281 = [];
         this.var_829 = [];
         super(param1);
      }
      
      override public function dispose() : void
      {
         if(this.var_330 != null)
         {
            this.var_330.dispose();
            this.var_330 = null;
         }
         if(this.var_331 != null)
         {
            this.var_331.dispose();
            this.var_331 = null;
         }
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         if(!super.init())
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("configuration_catalog_spaces") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_177 = _loc1_.content as XML;
            for each(_loc2_ in page.offers)
            {
               _loc4_ = _loc2_.productContainer.firstProduct;
               _loc5_ = _loc2_.localizationId;
               _loc6_ = _loc5_.split(" ")[0];
               _loc7_ = _loc5_.split(" ")[1];
               _loc8_ = false;
               switch(_loc4_.furnitureData.name)
               {
                  case "floor":
                     for each(_loc9_ in this.var_177.floors.pattern)
                     {
                        this._activeFloorPatterns.push(String(_loc9_.@id));
                        this.var_1280.push(_loc2_);
                     }
                     break;
                  case "wallpaper":
                     for each(_loc10_ in this.var_177.walls.pattern)
                     {
                        if(_loc10_.@id == _loc7_)
                        {
                           this.var_825.push(_loc7_);
                           _loc8_ = true;
                        }
                     }
                     if(_loc8_)
                     {
                        this.var_1282.push(_loc2_);
                     }
                     else
                     {
                        Logger.log("[SpacesCatalogWidget] Could not find wallpaper pattern configuration! " + [_loc2_.localizationId,_loc4_.furnitureData.name]);
                     }
                     break;
                  case "landscape":
                     for each(_loc11_ in this.var_177.landscapes.pattern)
                     {
                        if(_loc11_.@id == _loc7_)
                        {
                           this.var_829.push(_loc7_);
                           _loc8_ = true;
                        }
                     }
                     if(_loc8_)
                     {
                        this.var_1281.push(_loc2_);
                     }
                     else
                     {
                        Logger.log("[SpacesCatalogWidget] Could not find landscape pattern configuration! " + [_loc2_.localizationId,_loc4_.furnitureData.name]);
                     }
                     break;
                  default:
                     Logger.log("[SpacesCatalogWidget] : " + _loc4_.furnitureData.name);
                     break;
               }
            }
            _loc3_ = 0;
            while(_loc3_ < _window.numChildren)
            {
               _loc12_ = _window.getChildAt(_loc3_);
               if(_loc12_ is IButtonWindow)
               {
                  _loc12_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClick);
               }
               _loc3_++;
            }
            this.changePattern(const_205,0);
            this.changePattern(const_94,0);
            this.changePattern(const_204,0);
            this.updateConfiguration();
            this.retrieveSpacesPreview();
            return true;
         }
         return false;
      }
      
      private function onClick(param1:WindowMouseEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:IWindow = param1.target as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         switch(_loc2_.name)
         {
            case "ctlg_wall_pattern_prev":
               this.changePattern(const_205,-1);
               break;
            case "ctlg_wall_pattern_next":
               this.changePattern(const_205,1);
               break;
            case "ctlg_wall_color_prev":
               this.changeColor(const_205,-1);
               break;
            case "ctlg_wall_color_next":
               this.changeColor(const_205,1);
               break;
            case "ctlg_buy_wall":
               _loc3_ = this.var_1282[this.var_394];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1548);
               }
               break;
            case "ctlg_floor_pattern_prev":
               this.changePattern(const_204,-1);
               break;
            case "ctlg_floor_pattern_next":
               this.changePattern(const_204,1);
               break;
            case "ctlg_floor_color_prev":
               this.changeColor(const_204,-1);
               break;
            case "ctlg_floor_color_next":
               this.changeColor(const_204,1);
               break;
            case "ctlg_buy_floor":
               _loc3_ = this.var_1280[this.var_393];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this._floorType);
               }
               break;
            case "ctlg_landscape_pattern_next":
               this.changePattern(const_94,-1);
               break;
            case "ctlg_landscape_pattern_prev":
               this.changePattern(const_94,1);
               break;
            case "ctlg_landscape_color_prev":
               this.changeColor(const_94,-1);
               break;
            case "ctlg_landscape_color_next":
               this.changeColor(const_94,1);
               break;
            case "ctlg_buy_landscape":
               _loc3_ = this.var_1281[this.var_392];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1550);
               }
               break;
            default:
               Logger.log("Spaces, unknown button: " + _loc2_.name);
         }
         this.updateConfiguration();
         this.retrieveSpacesPreview();
      }
      
      private function updateConfiguration() : void
      {
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc2_:String = this.var_825[this.var_394];
         for each(_loc1_ in this.var_177.walls.pattern)
         {
            if(_loc1_.@id == _loc2_)
            {
               if(this.var_395 >= 0)
               {
                  _loc9_ = _loc1_.children()[this.var_395];
                  if(_loc9_ != null)
                  {
                     this.var_1548 = _loc9_.@id;
                  }
               }
            }
         }
         _loc3_ = this.var_1282[this.var_394];
         _loc4_ = (page.viewer.catalog as HabboCatalog).localization;
         if(_loc3_ != null)
         {
            _loc10_ = _window.findChildByName("ctlg_wall_price") as ITextWindow;
            if(_loc10_ != null)
            {
               _loc10_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc3_.priceInCredits));
            }
         }
         var _loc5_:String = this._activeFloorPatterns[this.var_393];
         for each(_loc1_ in this.var_177.floors.pattern)
         {
            if(_loc1_.@id == _loc5_)
            {
               _loc11_ = _loc1_.children()[this.var_458];
               if(_loc11_ != null)
               {
                  this._floorType = _loc11_.@id;
               }
            }
         }
         _loc6_ = this.var_1280[this.var_393];
         if(_loc6_ != null)
         {
            _loc12_ = _window.findChildByName("ctlg_floor_price") as ITextWindow;
            if(_loc12_ != null)
            {
               _loc12_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc6_.priceInCredits));
            }
         }
         var _loc7_:String = this.var_829[this.var_392];
         for each(_loc1_ in this.var_177.landscapes.pattern)
         {
            if(_loc1_.@id == _loc7_)
            {
               _loc13_ = _loc1_.children()[this.var_459];
               if(_loc13_ != null)
               {
                  this.var_1550 = _loc13_.@id;
               }
            }
         }
         _loc8_ = this.var_1281[this.var_392];
         if(_loc8_ != null)
         {
            _loc14_ = _window.findChildByName("ctlg_landscape_price") as ITextWindow;
            if(_loc14_ != null)
            {
               _loc14_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc8_.priceInCredits));
            }
         }
      }
      
      private function changePattern(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         switch(param1)
         {
            case const_205:
               this.var_394 += param2;
               if(this.var_394 < 0)
               {
                  this.var_394 = this.var_825.length - 1;
               }
               if(this.var_394 == this.var_825.length)
               {
                  this.var_394 = 0;
               }
               this.var_395 = 0;
               this.var_826 = 0;
               _loc5_ = this.var_825[this.var_394];
               for each(_loc8_ in this.var_177.walls.pattern)
               {
                  if(_loc8_.@id == _loc5_)
                  {
                     this.var_826 = _loc8_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_wall_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_wall_color_next") as IButtonWindow;
               if(this.var_826 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case const_204:
               this.var_393 += param2;
               if(this.var_393 < 0)
               {
                  this.var_393 = this._activeFloorPatterns.length - 1;
               }
               if(this.var_393 >= this._activeFloorPatterns.length)
               {
                  this.var_393 = 0;
               }
               this.var_458 = 0;
               this.var_827 = 0;
               _loc6_ = this._activeFloorPatterns[this.var_393];
               for each(_loc9_ in this.var_177.floors.pattern)
               {
                  if(_loc9_.@id == _loc6_)
                  {
                     this.var_827 = _loc9_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_floor_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_floor_color_next") as IButtonWindow;
               if(this.var_827 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case const_94:
               this.var_392 += param2;
               if(this.var_392 < 0)
               {
                  this.var_392 = this.var_829.length - 1;
               }
               if(this.var_392 >= this.var_829.length)
               {
                  this.var_392 = 0;
               }
               this.var_459 = 0;
               this.var_828 = 0;
               _loc7_ = this.var_829[this.var_392];
               for each(_loc10_ in this.var_177.landscapes.pattern)
               {
                  if(_loc10_.@id == _loc7_)
                  {
                     this.var_828 = _loc10_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_landscape_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_landscape_color_next") as IButtonWindow;
               if(this.var_828 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
         }
      }
      
      private function changeColor(param1:String, param2:int) : void
      {
         switch(param1)
         {
            case const_205:
               this.var_395 += param2;
               if(this.var_395 < 0)
               {
                  if(this.var_826 > 0)
                  {
                     this.var_395 = this.var_826 - 1;
                  }
                  else
                  {
                     this.var_395 = 0;
                  }
               }
               if(this.var_395 >= this.var_826)
               {
                  this.var_395 = 0;
               }
               break;
            case const_204:
               this.var_458 += param2;
               if(this.var_458 < 0)
               {
                  if(this.var_827 > 0)
                  {
                     this.var_458 = this.var_827 - 1;
                  }
                  else
                  {
                     this.var_458 = 0;
                  }
               }
               if(this.var_458 >= this.var_827)
               {
                  this.var_458 = 0;
               }
               break;
            case const_94:
               this.var_459 += param2;
               if(this.var_459 < 0)
               {
                  if(this.var_828 > 0)
                  {
                     this.var_459 = this.var_828 - 1;
                  }
                  else
                  {
                     this.var_459 = 0;
                  }
               }
               if(this.var_459 >= this.var_828)
               {
                  this.var_459 = 0;
               }
         }
      }
      
      private function retrieveSpacesPreview() : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:ImageResult = page.viewer.roomEngine.getRoomImage(this._floorType,this.var_1548,this.var_1550,64,this,"window_romantic_wide");
         var _loc3_:ImageResult = page.viewer.roomEngine.getGenericRoomObjectImage("window_romantic_wide","",new Vector3d(180,0,0),64,this);
         if(_loc2_ != null && _loc3_ != null)
         {
            this.var_1549 = _loc2_.id;
            this.var_1551 = _loc3_.id;
            _loc4_ = _loc2_.data as BitmapData;
            _loc5_ = _loc3_.data as BitmapData;
            if(this.var_330 != null)
            {
               this.var_330.dispose();
            }
            if(this.var_331 != null)
            {
               this.var_331.dispose();
            }
            this.var_330 = _loc4_;
            this.var_331 = _loc5_;
            this.setRoomImage(_loc4_,_loc5_);
         }
      }
      
      private function setRoomImage(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param1 != null && param2 != null && true)
         {
            _loc3_ = new Point(param1.width / 2 + 4 + 19,param1.height / 2 - param2.height / 2 - 24 + 10);
            _loc4_ = new BitmapData(param1.width,param1.height,param1.transparent);
            _loc4_.copyPixels(param1,param1.rect,new Point(0,0),null,null,true);
            _loc4_.copyPixels(param2,param2.rect,_loc3_,null,null,true);
            _loc5_ = window.getChildByName("catalog_floor_preview_example") as IBitmapWrapperWindow;
            if(_loc5_ != null)
            {
               if(_loc5_.bitmap == null)
               {
                  _loc5_.bitmap = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
               }
               _loc5_.bitmap.fillRect(_loc5_.bitmap.rect,16777215);
               _loc6_ = (_loc5_.width - _loc4_.width) / 2;
               _loc7_ = (_loc5_.height - _loc4_.height) / 2;
               _loc5_.bitmap.copyPixels(_loc4_,_loc4_.rect,new Point(_loc6_,_loc7_),null,null,true);
               _loc5_.invalidate();
            }
            _loc4_.dispose();
         }
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         if(disposed)
         {
            return;
         }
         switch(param1)
         {
            case this.var_1549:
               this.var_1549 = 0;
               if(this.var_330 != null)
               {
                  this.var_330.dispose();
               }
               this.var_330 = param2;
               break;
            case this.var_1551:
               this.var_1551 = 0;
               if(this.var_331 != null)
               {
                  this.var_331.dispose();
               }
               this.var_331 = param2;
         }
         if(this.var_330 != null && this.var_331 != null)
         {
            this.setRoomImage(this.var_330,this.var_331);
         }
      }
   }
}
