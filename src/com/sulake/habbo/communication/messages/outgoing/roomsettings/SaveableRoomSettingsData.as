package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1558:String;
      
      private var var_2282:int;
      
      private var _password:String;
      
      private var var_1489:int;
      
      private var var_2281:int;
      
      private var var_807:Array;
      
      private var var_2276:Array;
      
      private var var_2279:Boolean;
      
      private var var_2278:Boolean;
      
      private var var_2277:Boolean;
      
      private var var_2280:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2279;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2279 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2278;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2278 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2277;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2277 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2280;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2280 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1558;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1558 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2282;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2282 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1489;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1489 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2281;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2281 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_807;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_807 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2276;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2276 = param1;
      }
   }
}
