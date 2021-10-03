package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_158:int = 1;
      
      public static const const_402:int = 2;
      
      public static const const_1439:int = 3;
       
      
      private var var_2212:int;
      
      private var _state:int;
      
      private var var_1489:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1697:int;
      
      private var _priority:int;
      
      private var var_2308:int = 0;
      
      private var var_2311:int;
      
      private var var_2313:String;
      
      private var var_1431:int;
      
      private var var_1838:String;
      
      private var var_2309:int;
      
      private var var_2312:String;
      
      private var _message:String;
      
      private var var_2306:int;
      
      private var var_891:String;
      
      private var var_1644:int;
      
      private var var_2310:String;
      
      private var var_358:int;
      
      private var var_2307:String;
      
      private var var_2243:String;
      
      private var var_2314:int;
      
      private var var_2175:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2212 = param1;
         this._state = param2;
         this.var_1489 = param3;
         this._reportedCategoryId = param4;
         this.var_1697 = param5;
         this._priority = param6;
         this.var_2311 = param7;
         this.var_2313 = param8;
         this.var_1431 = param9;
         this.var_1838 = param10;
         this.var_2309 = param11;
         this.var_2312 = param12;
         this._message = param13;
         this.var_2306 = param14;
         this.var_891 = param15;
         this.var_1644 = param16;
         this.var_2310 = param17;
         this.var_358 = param18;
         this.var_2307 = param19;
         this.var_2243 = param20;
         this.var_2314 = param21;
         this.var_2175 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2212;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1489;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1697;
      }
      
      public function get priority() : int
      {
         return this._priority + this.var_2308;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2311;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2313;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1431;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1838;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2309;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2312;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2306;
      }
      
      public function get roomName() : String
      {
         return this.var_891;
      }
      
      public function get roomType() : int
      {
         return this.var_1644;
      }
      
      public function get flatType() : String
      {
         return this.var_2310;
      }
      
      public function get flatId() : int
      {
         return this.var_358;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2307;
      }
      
      public function get roomResources() : String
      {
         return this.var_2243;
      }
      
      public function get unitPort() : int
      {
         return this.var_2314;
      }
      
      public function get worldId() : int
      {
         return this.var_2175;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2308 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1697) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
