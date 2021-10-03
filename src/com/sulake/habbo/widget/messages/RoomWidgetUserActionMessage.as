package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_792:String = "RWUAM_WHISPER_USER";
      
      public static const const_863:String = "RWUAM_IGNORE_USER";
      
      public static const const_664:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_502:String = "RWUAM_KICK_USER";
      
      public static const const_763:String = "RWUAM_BAN_USER";
      
      public static const const_895:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_797:String = "RWUAM_RESPECT_USER";
      
      public static const const_707:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_803:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_865:String = "RWUAM_START_TRADING";
      
      public static const const_793:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_471:String = "RWUAM_KICK_BOT";
      
      public static const const_693:String = "RWUAM_REPORT";
      
      public static const const_558:String = "RWUAM_PICKUP_PET";
      
      public static const const_1498:String = "RWUAM_TRAIN_PET";
      
      public static const const_442:String = " RWUAM_RESPECT_PET";
      
      public static const const_394:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_885:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
