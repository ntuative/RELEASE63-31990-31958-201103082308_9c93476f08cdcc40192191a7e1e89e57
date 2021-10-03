package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1394:String = "WE_CREATE";
      
      public static const const_1656:String = "WE_CREATED";
      
      public static const const_1643:String = "WE_DESTROY";
      
      public static const const_306:String = "WE_DESTROYED";
      
      public static const const_1512:String = "WE_OPEN";
      
      public static const const_1508:String = "WE_OPENED";
      
      public static const const_1385:String = "WE_CLOSE";
      
      public static const const_1379:String = "WE_CLOSED";
      
      public static const const_1616:String = "WE_FOCUS";
      
      public static const const_319:String = "WE_FOCUSED";
      
      public static const const_1670:String = "WE_UNFOCUS";
      
      public static const const_1621:String = "WE_UNFOCUSED";
      
      public static const const_1486:String = "WE_ACTIVATE";
      
      public static const const_1467:String = "WE_ACTIVATED";
      
      public static const const_1405:String = "WE_DEACTIVATE";
      
      public static const const_667:String = "WE_DEACTIVATED";
      
      public static const const_483:String = "WE_SELECT";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_785:String = "WE_UNSELECT";
      
      public static const const_806:String = "WE_UNSELECTED";
      
      public static const const_1739:String = "WE_ATTACH";
      
      public static const const_1764:String = "WE_ATTACHED";
      
      public static const const_1913:String = "WE_DETACH";
      
      public static const const_1895:String = "WE_DETACHED";
      
      public static const const_1639:String = "WE_LOCK";
      
      public static const const_1496:String = "WE_LOCKED";
      
      public static const const_1430:String = "WE_UNLOCK";
      
      public static const const_1666:String = "WE_UNLOCKED";
      
      public static const const_720:String = "WE_ENABLE";
      
      public static const const_308:String = "WE_ENABLED";
      
      public static const const_850:String = "WE_DISABLE";
      
      public static const const_226:String = "WE_DISABLED";
      
      public static const const_1384:String = "WE_RELOCATE";
      
      public static const const_407:String = "WE_RELOCATED";
      
      public static const const_1563:String = "WE_RESIZE";
      
      public static const const_49:String = "WE_RESIZED";
      
      public static const const_1535:String = "WE_MINIMIZE";
      
      public static const const_1465:String = "WE_MINIMIZED";
      
      public static const const_1657:String = "WE_MAXIMIZE";
      
      public static const const_1569:String = "WE_MAXIMIZED";
      
      public static const const_1411:String = "WE_RESTORE";
      
      public static const const_1632:String = "WE_RESTORED";
      
      public static const const_1834:String = "WE_ARRANGE";
      
      public static const const_1922:String = "WE_ARRANGED";
      
      public static const const_107:String = "WE_UPDATE";
      
      public static const const_1798:String = "WE_UPDATED";
      
      public static const const_1848:String = "WE_CHILD_RELOCATE";
      
      public static const const_563:String = "WE_CHILD_RELOCATED";
      
      public static const const_1793:String = "WE_CHILD_RESIZE";
      
      public static const const_296:String = "WE_CHILD_RESIZED";
      
      public static const const_1915:String = "WE_CHILD_REMOVE";
      
      public static const const_520:String = "WE_CHILD_REMOVED";
      
      public static const const_1752:String = "WE_PARENT_RELOCATE";
      
      public static const const_1754:String = "WE_PARENT_RELOCATED";
      
      public static const const_1749:String = "WE_PARENT_RESIZE";
      
      public static const const_1392:String = "WE_PARENT_RESIZED";
      
      public static const const_177:String = "WE_OK";
      
      public static const const_641:String = "WE_CANCEL";
      
      public static const const_105:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_516:String = "WE_SCROLL";
      
      public static const const_169:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_2012:IWindow;
      
      protected var var_2013:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_2012 = param3;
         this.var_2013 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_2012;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_2013 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_2013;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
