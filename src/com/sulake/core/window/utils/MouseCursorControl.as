package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl extends Sprite implements IMouseCursor, IDisposable
   {
       
      
      private var _type:uint;
      
      private var var_225:Stage;
      
      private var var_388:Boolean;
      
      private var var_1072:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_1677:Dictionary;
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         this._type = MouseCursorType.const_31;
         this.var_225 = param1.stage;
         this.var_388 = true;
         this.var_1677 = new Dictionary();
         this.var_225.addChild(this);
         this.var_225.addEventListener(Event.MOUSE_LEAVE,this.onStageMouseLeave);
         this.var_225.addEventListener(MouseEvent.MOUSE_MOVE,this.onStageMouseMove);
         this.var_225.addEventListener(MouseEvent.MOUSE_OVER,this.onStageMouseMove);
         this.var_225.addEventListener(MouseEvent.MOUSE_OUT,this.onStageMouseMove);
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_225.removeEventListener(Event.MOUSE_LEAVE,this.onStageMouseLeave);
            this.var_225.removeEventListener(MouseEvent.MOUSE_MOVE,this.onStageMouseMove);
            this.var_225.removeEventListener(MouseEvent.MOUSE_OVER,this.onStageMouseMove);
            this.var_225.removeEventListener(MouseEvent.MOUSE_OUT,this.onStageMouseMove);
            this._disposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function set type(param1:uint) : void
      {
         this._type = param1;
         this.var_1072 = this.var_1677[this._type];
         if(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.var_1072)
         {
            addChild(this.var_1072);
            Mouse.hide();
         }
         else
         {
            Mouse.show();
            switch(this._type)
            {
               case MouseCursorType.const_31:
               case MouseCursorType.ARROW:
                  Mouse.cursor = MouseCursor.ARROW;
                  break;
               case MouseCursorType.const_287:
                  Mouse.cursor = MouseCursor.BUTTON;
                  break;
               case MouseCursorType.const_1558:
               case MouseCursorType.const_248:
               case MouseCursorType.const_1466:
               case MouseCursorType.const_1448:
                  Mouse.cursor = MouseCursor.HAND;
                  break;
               case MouseCursorType.NONE:
                  Mouse.cursor = MouseCursor.ARROW;
                  Mouse.hide();
            }
         }
      }
      
      override public function get visible() : Boolean
      {
         return this.var_388;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this.var_388 = param1;
         super.visible = param1;
         if(this.var_388)
         {
            Mouse.show();
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         this.var_1677[param1] = param2;
      }
      
      private function onStageMouseMove(param1:MouseEvent) : void
      {
         if(this.var_1072)
         {
            x = param1.stageX - 2;
            y = param1.stageY;
            if(this._type == MouseCursorType.const_31)
            {
               this.var_388 = false;
               Mouse.show();
            }
            else
            {
               this.var_388 = true;
               Mouse.hide();
            }
         }
      }
      
      private function onStageMouseLeave(param1:Event) : void
      {
         if(this.var_1072 && this._type != MouseCursorType.const_31)
         {
            Mouse.hide();
            this.var_388 = false;
         }
      }
   }
}
