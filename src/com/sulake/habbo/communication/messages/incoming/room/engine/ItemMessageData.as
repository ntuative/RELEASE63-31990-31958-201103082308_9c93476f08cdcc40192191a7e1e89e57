package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2633:Boolean = false;
      
      private var var_2634:int = 0;
      
      private var var_2632:int = 0;
      
      private var var_2431:int = 0;
      
      private var var_2430:int = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_238:String = "";
      
      private var _type:int = 0;
      
      private var var_2845:String = "";
      
      private var var_1454:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_176:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2633 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_176 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2633;
      }
      
      public function get wallX() : Number
      {
         return this.var_2634;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2634 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2632;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2632 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2431;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2431 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2430;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2430 = param1;
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
      
      public function get dir() : String
      {
         return this.var_238;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_238 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_176)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_176)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_176)
         {
            this._data = param1;
         }
      }
   }
}
