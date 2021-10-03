package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1722:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_205:MsgWithRequestId;
      
      private var var_624:RoomEventData;
      
      private var var_2677:Boolean;
      
      private var var_2673:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2447:int;
      
      private var var_268:GuestRoomData;
      
      private var var_953:PublicRoomShortData;
      
      private var var_2672:int;
      
      private var var_2670:Boolean;
      
      private var var_2669:int;
      
      private var var_2675:Boolean;
      
      private var var_1877:int;
      
      private var var_2679:Boolean;
      
      private var var_1306:Array;
      
      private var var_1455:Array;
      
      private var var_2676:int;
      
      private var var_1456:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1201:Boolean;
      
      private var var_2678:int;
      
      private var var_2674:Boolean;
      
      private var var_2671:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1306 = new Array();
         this.var_1455 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_268 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_268 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_953 = null;
         this.var_268 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_953 = param1.publicSpace;
            this.var_624 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_624 != null)
         {
            this.var_624.dispose();
            this.var_624 = null;
         }
         if(this.var_953 != null)
         {
            this.var_953.dispose();
            this.var_953 = null;
         }
         if(this.var_268 != null)
         {
            this.var_268.dispose();
            this.var_268 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_268 != null)
         {
            this.var_268.dispose();
         }
         this.var_268 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_624 != null)
         {
            this.var_624.dispose();
         }
         this.var_624 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_205 != null && this.var_205 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_205 != null && this.var_205 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_205 != null && this.var_205 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_205 = param1;
         this.var_1201 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_205 = param1;
         this.var_1201 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_205 = param1;
         this.var_1201 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_205 == null)
         {
            return;
         }
         this.var_205.dispose();
         this.var_205 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_205 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_205 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_205 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_624;
      }
      
      public function get avatarId() : int
      {
         return this.var_2447;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2677;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2673;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_268;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_953;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2670;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2669;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1877;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2675;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2678;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2672;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2679;
      }
      
      public function get adIndex() : int
      {
         return this.var_2671;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2674;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2447 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2669 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2670 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2677 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2673 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2675 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1877 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2678 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2672 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2679 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2671 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2674 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1306 = param1;
         this.var_1455 = new Array();
         for each(_loc2_ in this.var_1306)
         {
            if(_loc2_.visible)
            {
               this.var_1455.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1306;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1455;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2676 = param1.limit;
         this.var_1456 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1456 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_268.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_268 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_268.flatId;
         return this.var_1877 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1456 >= this.var_2676;
      }
      
      public function startLoading() : void
      {
         this.var_1201 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1201;
      }
   }
}
