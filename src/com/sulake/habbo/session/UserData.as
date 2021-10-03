package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_883:String = "";
      
      private var var_569:String = "";
      
      private var var_2509:String = "";
      
      private var var_2322:int;
      
      private var var_2388:int = 0;
      
      private var var_2507:String = "";
      
      private var var_2508:int = 0;
      
      private var var_2386:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2322;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_883;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_883 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_569;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_569 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2509;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2509 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2388;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2388 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2507;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2507 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2508;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2508 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2386;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2386 = param1;
      }
   }
}
