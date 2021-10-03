package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1753:int;
      
      private var var_1374:int;
      
      private var var_2054:int;
      
      private var var_2056:int;
      
      private var var_2055:int;
      
      private var _energy:int;
      
      private var var_2052:int;
      
      private var _nutrition:int;
      
      private var var_2057:int;
      
      private var var_2051:int;
      
      private var _ownerName:String;
      
      private var var_2053:int;
      
      private var var_487:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1753;
      }
      
      public function get level() : int
      {
         return this.var_1374;
      }
      
      public function get levelMax() : int
      {
         return this.var_2054;
      }
      
      public function get experience() : int
      {
         return this.var_2056;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2055;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2052;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2057;
      }
      
      public function get ownerId() : int
      {
         return this.var_2051;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2053;
      }
      
      public function get age() : int
      {
         return this.var_487;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1753 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1374 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2054 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2056 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2055 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2052 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2057 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2051 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2053 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_487 = param1;
      }
   }
}
