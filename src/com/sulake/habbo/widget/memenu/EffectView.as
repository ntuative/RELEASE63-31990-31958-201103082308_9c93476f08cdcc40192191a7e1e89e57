package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class EffectView
   {
       
      
      private const const_1982:int = 1000;
      
      private var _container:MeMenuEffectsView;
      
      private var _window:IWindowContainer;
      
      private var var_173:IWidgetAvatarEffect;
      
      private var var_862:IWindow;
      
      private var var_302:Number;
      
      private var var_702:ITextWindow;
      
      private var var_198:Timer;
      
      private var var_863:IWindow;
      
      public function EffectView()
      {
         super();
         this.var_198 = new Timer(this.const_1982);
         this.var_198.addEventListener(TimerEvent.TIMER,this.onUpdate);
      }
      
      public function get effect() : IWidgetAvatarEffect
      {
         return this.var_173;
      }
      
      public function init(param1:MeMenuEffectsView, param2:String, param3:IWidgetAvatarEffect) : void
      {
         this.var_173 = param3;
         this._container = param1;
         this.createWindow(param2);
      }
      
      public function dispose() : void
      {
         if(this.var_198 != null)
         {
            this.var_198.stop();
            this.var_198.removeEventListener(TimerEvent.TIMER,this.onUpdate);
            this.var_198 = null;
         }
         this._container = null;
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         var _loc2_:Number = NaN;
         if(this.var_862 == null)
         {
            this.var_198.stop();
            return;
         }
         if(this.var_173.isActive)
         {
            _loc2_ = this.var_173.secondsLeft / Number(this.var_173.duration);
            this.var_862.width = _loc2_ * this.var_302;
         }
         else
         {
            this.var_862.width = 0;
            this.var_198.stop();
         }
         this.setTimeLeft();
      }
      
      private function setTimeLeft() : void
      {
         if(this.var_702 == null)
         {
            this.var_702 = this._window.findChildByName("time_left") as ITextWindow;
            if(this.var_702 == null)
            {
               return;
            }
         }
         if(!this.var_173.isActive)
         {
            this.var_702.caption = "${widgets.memenu.effects.activate}";
            return;
         }
         this.var_702.caption = "${widgets.memenu.effects.active.timeleft}";
         var _loc1_:String = this.var_702.text;
         var _loc2_:int = this.var_173.secondsLeft;
         var _loc3_:int = Math.floor(_loc2_ / 3600);
         var _loc4_:int = Math.floor(_loc2_ / 60) % 60;
         var _loc5_:int = _loc2_ % 60;
         var _loc6_:String = _loc3_ < 10 ? "0" : "";
         var _loc7_:String = _loc4_ < 10 ? "0" : "";
         var _loc8_:String = _loc5_ < 10 ? "0" : "";
         if(_loc3_ > 0)
         {
            _loc1_ = _loc1_.replace("%time_left%",_loc6_ + _loc3_ + ":" + _loc7_ + _loc4_ + ":" + _loc8_ + _loc5_);
         }
         else
         {
            _loc1_ = _loc1_.replace("%time_left%",_loc7_ + _loc4_ + ":" + _loc8_ + _loc5_);
         }
         this.var_702.text = _loc1_;
      }
      
      private function createWindow(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc7_:* = null;
         var _loc3_:String = "";
         if(this.var_173.isInUse)
         {
            _loc3_ = "memenu_effect_selected";
         }
         else if(this.var_173.isActive)
         {
            _loc3_ = "memenu_effect_unselected";
         }
         else
         {
            _loc3_ = "memenu_effect_inactive";
         }
         _loc2_ = this._container.widget.assets.getAssetByName(_loc3_) as XmlAsset;
         this._window = (this._container.widget.windowManager as ICoreWindowManager).buildFromXML(_loc2_.content as XML) as IWindowContainer;
         if(this._window == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         this._window.name = param1;
         this._container.effectsContainer.addChild(this._window);
         var _loc4_:ITextWindow = this._window.findChildByName("effect_name") as ITextWindow;
         if(_loc4_ != null)
         {
            _loc4_.caption = "${fx_" + this.var_173.type + "}";
         }
         var _loc5_:ITextWindow = this._window.findChildByName("effect_amount") as ITextWindow;
         if(_loc5_ != null)
         {
            _loc5_.caption = this.var_173.effectsInInventory + "";
         }
         var _loc6_:IWindowContainer = this._window.findChildByName("effect_amount_bg1") as IWindowContainer;
         if(this.var_173.effectsInInventory < 2)
         {
            if(_loc6_ != null)
            {
               _loc6_.visible = false;
            }
         }
         if(_loc3_ == "memenu_effect_inactive")
         {
            _loc7_ = this._window.findChildByName("activate_effect") as IButtonWindow;
            if(_loc7_ != null)
            {
               _loc7_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseEvent);
            }
         }
         else
         {
            this._window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseEvent);
            if(this.var_173.isActive)
            {
               this._window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onMouseEvent);
               this._window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,this.onMouseEvent);
            }
            if(this.var_173.isInUse)
            {
               this.setElementImage("effect_hilite","memenu_fx_pause");
            }
            else
            {
               this.setElementImage("effect_hilite","memenu_fx_play");
            }
            this.var_863 = this._window.findChildByName("effect_hilite");
            this.var_863.visible = false;
         }
         this.setTimeLeft();
         this.var_862 = this._window.findChildByName("loader_bar");
         if(this.var_862 != null)
         {
            this.var_302 = this.var_862.width;
            this.var_198.start();
            this.onUpdate();
         }
         if(this.var_173.icon)
         {
            this.setElementBitmap("effect_icon",this.var_173.icon);
         }
      }
      
      private function setElementBitmap(param1:String, param2:BitmapData) : void
      {
         var _loc3_:IBitmapWrapperWindow = this._window.findChildByName(param1) as IBitmapWrapperWindow;
         if(_loc3_ != null)
         {
            _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc3_.bitmap.copyPixels(param2,param2.rect,new Point(0,0));
         }
         else
         {
            Logger.log("Could not find element: " + param1);
         }
      }
      
      private function onMouseEvent(param1:WindowMouseEvent) : void
      {
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(this.var_863 != null)
               {
                  this.var_863.visible = true;
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT:
               if(this.var_863 != null)
               {
                  this.var_863.visible = false;
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               this._container.selectEffect(this);
         }
      }
      
      private function setElementImage(param1:String, param2:String) : void
      {
         var _loc3_:BitmapDataAsset = this._container.widget.assets.getAssetByName(param2) as BitmapDataAsset;
         var _loc4_:BitmapData = _loc3_.content as BitmapData;
         this.setElementBitmap(param1,_loc4_);
      }
   }
}
