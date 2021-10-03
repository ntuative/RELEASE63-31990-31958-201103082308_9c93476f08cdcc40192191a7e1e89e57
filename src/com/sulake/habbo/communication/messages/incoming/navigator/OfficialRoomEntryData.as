package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1218:int = 1;
      
      public static const const_668:int = 2;
      
      public static const const_683:int = 3;
      
      public static const const_1585:int = 4;
       
      
      private var _index:int;
      
      private var var_2693:String;
      
      private var var_2692:String;
      
      private var var_2696:Boolean;
      
      private var var_2694:String;
      
      private var var_849:String;
      
      private var var_2695:int;
      
      private var var_2544:int;
      
      private var _type:int;
      
      private var var_2049:String;
      
      private var var_967:GuestRoomData;
      
      private var var_968:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2693 = param1.readString();
         this.var_2692 = param1.readString();
         this.var_2696 = param1.readInteger() == 1;
         this.var_2694 = param1.readString();
         this.var_849 = param1.readString();
         this.var_2695 = param1.readInteger();
         this.var_2544 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1218)
         {
            this.var_2049 = param1.readString();
         }
         else if(this._type == const_683)
         {
            this.var_968 = new PublicRoomData(param1);
         }
         else if(this._type == const_668)
         {
            this.var_967 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_967 != null)
         {
            this.var_967.dispose();
            this.var_967 = null;
         }
         if(this.var_968 != null)
         {
            this.var_968.dispose();
            this.var_968 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2693;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2692;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2696;
      }
      
      public function get picText() : String
      {
         return this.var_2694;
      }
      
      public function get picRef() : String
      {
         return this.var_849;
      }
      
      public function get folderId() : int
      {
         return this.var_2695;
      }
      
      public function get tag() : String
      {
         return this.var_2049;
      }
      
      public function get userCount() : int
      {
         return this.var_2544;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_967;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_968;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1218)
         {
            return 0;
         }
         if(this.type == const_668)
         {
            return this.var_967.maxUserCount;
         }
         if(this.type == const_683)
         {
            return this.var_968.maxUsers;
         }
         return 0;
      }
   }
}
