package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1477:String = "WN_CRETAE";
      
      public static const const_1493:String = "WN_CREATED";
      
      public static const const_1034:String = "WN_DESTROY";
      
      public static const const_1191:String = "WN_DESTROYED";
      
      public static const const_1040:String = "WN_OPEN";
      
      public static const const_1177:String = "WN_OPENED";
      
      public static const const_1103:String = "WN_CLOSE";
      
      public static const const_1204:String = "WN_CLOSED";
      
      public static const const_1024:String = "WN_FOCUS";
      
      public static const const_1142:String = "WN_FOCUSED";
      
      public static const const_1066:String = "WN_UNFOCUS";
      
      public static const const_998:String = "WN_UNFOCUSED";
      
      public static const const_1047:String = "WN_ACTIVATE";
      
      public static const const_338:String = "WN_ACTVATED";
      
      public static const const_1125:String = "WN_DEACTIVATE";
      
      public static const const_1049:String = "WN_DEACTIVATED";
      
      public static const const_540:String = "WN_SELECT";
      
      public static const const_363:String = "WN_SELECTED";
      
      public static const const_634:String = "WN_UNSELECT";
      
      public static const const_632:String = "WN_UNSELECTED";
      
      public static const const_1141:String = "WN_LOCK";
      
      public static const const_1194:String = "WN_LOCKED";
      
      public static const const_1063:String = "WN_UNLOCK";
      
      public static const const_1096:String = "WN_UNLOCKED";
      
      public static const const_1145:String = "WN_ENABLE";
      
      public static const const_805:String = "WN_ENABLED";
      
      public static const const_1000:String = "WN_DISABLE";
      
      public static const const_689:String = "WN_DISABLED";
      
      public static const const_824:String = "WN_RESIZE";
      
      public static const const_198:String = "WN_RESIZED";
      
      public static const const_997:String = "WN_RELOCATE";
      
      public static const const_557:String = "WN_RELOCATED";
      
      public static const const_1032:String = "WN_MINIMIZE";
      
      public static const const_1007:String = "WN_MINIMIZED";
      
      public static const const_1165:String = "WN_MAXIMIZE";
      
      public static const const_1126:String = "WN_MAXIMIZED";
      
      public static const const_1156:String = "WN_RESTORE";
      
      public static const const_1157:String = "WN_RESTORED";
      
      public static const const_1806:String = "WN_ARRANGE";
      
      public static const const_1759:String = "WN_ARRANGED";
      
      public static const const_1904:String = "WN_UPDATE";
      
      public static const const_1881:String = "WN_UPDATED";
      
      public static const const_351:String = "WN_CHILD_ADDED";
      
      public static const const_886:String = "WN_CHILD_REMOVED";
      
      public static const const_311:String = "WN_CHILD_RESIZED";
      
      public static const const_302:String = "WN_CHILD_RELOCATED";
      
      public static const const_217:String = "WN_CHILD_ACTIVATED";
      
      public static const const_468:String = "WN_PARENT_ADDED";
      
      public static const const_1003:String = "WN_PARENT_REMOVED";
      
      public static const const_437:String = "WN_PARENT_RESIZED";
      
      public static const const_1206:String = "WN_PARENT_RELOCATED";
      
      public static const const_862:String = "WN_PARENT_ACTIVATED";
      
      public static const const_587:String = "WN_STATE_UPDATED";
      
      public static const const_556:String = "WN_STYLE_UPDATED";
      
      public static const const_547:String = "WN_PARAM_UPDATED";
      
      public static const const_1844:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_2012,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
