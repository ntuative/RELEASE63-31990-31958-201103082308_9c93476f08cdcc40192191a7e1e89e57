package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1753:int;
      
      private var _name:String;
      
      private var var_1374:int;
      
      private var var_2452:int;
      
      private var var_2056:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_569:String;
      
      private var var_2450:int;
      
      private var var_2449:int;
      
      private var var_2451:int;
      
      private var var_2053:int;
      
      private var var_2051:int;
      
      private var _ownerName:String;
      
      private var var_487:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1753;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1374;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2452;
      }
      
      public function get experience() : int
      {
         return this.var_2056;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_569;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2450;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2449;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2451;
      }
      
      public function get respect() : int
      {
         return this.var_2053;
      }
      
      public function get ownerId() : int
      {
         return this.var_2051;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_487;
      }
      
      public function flush() : Boolean
      {
         this.var_1753 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1753 = param1.readInteger();
         this._name = param1.readString();
         this.var_1374 = param1.readInteger();
         this.var_2452 = param1.readInteger();
         this.var_2056 = param1.readInteger();
         this.var_2450 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2449 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2451 = param1.readInteger();
         this.var_569 = param1.readString();
         this.var_2053 = param1.readInteger();
         this.var_2051 = param1.readInteger();
         this.var_487 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
