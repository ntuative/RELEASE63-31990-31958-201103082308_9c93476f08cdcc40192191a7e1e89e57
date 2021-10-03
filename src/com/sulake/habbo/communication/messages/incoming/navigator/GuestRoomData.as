package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_358:int;
      
      private var var_729:Boolean;
      
      private var var_891:String;
      
      private var _ownerName:String;
      
      private var var_2282:int;
      
      private var var_2544:int;
      
      private var var_2587:int;
      
      private var var_1558:String;
      
      private var var_2584:int;
      
      private var var_2364:Boolean;
      
      private var var_695:int;
      
      private var var_1489:int;
      
      private var var_2585:String;
      
      private var var_807:Array;
      
      private var var_2586:RoomThumbnailData;
      
      private var var_2279:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_807 = new Array();
         super();
         this.var_358 = param1.readInteger();
         this.var_729 = param1.readBoolean();
         this.var_891 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2282 = param1.readInteger();
         this.var_2544 = param1.readInteger();
         this.var_2587 = param1.readInteger();
         this.var_1558 = param1.readString();
         this.var_2584 = param1.readInteger();
         this.var_2364 = param1.readBoolean();
         this.var_695 = param1.readInteger();
         this.var_1489 = param1.readInteger();
         this.var_2585 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_807.push(_loc4_);
            _loc3_++;
         }
         this.var_2586 = new RoomThumbnailData(param1);
         this.var_2279 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_807 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_358;
      }
      
      public function get event() : Boolean
      {
         return this.var_729;
      }
      
      public function get roomName() : String
      {
         return this.var_891;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2282;
      }
      
      public function get userCount() : int
      {
         return this.var_2544;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2587;
      }
      
      public function get description() : String
      {
         return this.var_1558;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2584;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2364;
      }
      
      public function get score() : int
      {
         return this.var_695;
      }
      
      public function get categoryId() : int
      {
         return this.var_1489;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2585;
      }
      
      public function get tags() : Array
      {
         return this.var_807;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2586;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2279;
      }
   }
}
