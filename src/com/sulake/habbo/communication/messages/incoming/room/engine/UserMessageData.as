package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1097:String = "M";
      
      public static const const_1442:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_238:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_883:String = "";
      
      private var var_569:String = "";
      
      private var var_2509:String = "";
      
      private var var_2322:int;
      
      private var var_2388:int = 0;
      
      private var var_2507:String = "";
      
      private var var_2508:int = 0;
      
      private var var_2386:int = 0;
      
      private var var_2560:String = "";
      
      private var var_176:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_176 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_176)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_159;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_159 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_158;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_158 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_238;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_238 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_176)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_176)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_883;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_883 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_569;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_569 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2509;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2509 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2322;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2322 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2388;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2388 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2507;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2507 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2508;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2508 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2386;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2386 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2560;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2560 = param1;
         }
      }
   }
}
