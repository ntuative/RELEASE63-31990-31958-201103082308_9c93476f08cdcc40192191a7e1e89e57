package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_569:String;
      
      private var var_883:String;
      
      private var var_2409:String;
      
      private var var_1727:String;
      
      private var var_2411:int;
      
      private var var_2412:String;
      
      private var var_2414:int;
      
      private var var_2410:int;
      
      private var var_2413:int;
      
      private var var_1228:int;
      
      private var _petRespectLeft:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_569 = param1.readString();
         this.var_883 = param1.readString();
         this.var_2409 = param1.readString();
         this.var_1727 = param1.readString();
         this.var_2411 = param1.readInteger();
         this.var_2412 = param1.readString();
         this.var_2414 = param1.readInteger();
         this.var_2410 = param1.readInteger();
         this.var_2413 = param1.readInteger();
         this.var_1228 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_569;
      }
      
      public function get sex() : String
      {
         return this.var_883;
      }
      
      public function get customData() : String
      {
         return this.var_2409;
      }
      
      public function get realName() : String
      {
         return this.var_1727;
      }
      
      public function get tickets() : int
      {
         return this.var_2411;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2412;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2414;
      }
      
      public function get directMail() : int
      {
         return this.var_2410;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2413;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1228;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
   }
}
