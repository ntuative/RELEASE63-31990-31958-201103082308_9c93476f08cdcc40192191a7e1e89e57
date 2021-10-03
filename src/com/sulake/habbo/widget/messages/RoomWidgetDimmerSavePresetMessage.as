package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_858:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2361:int;
      
      private var var_2358:int;
      
      private var _color:uint;
      
      private var var_1170:int;
      
      private var var_2652:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_858);
         this.var_2361 = param1;
         this.var_2358 = param2;
         this._color = param3;
         this.var_1170 = param4;
         this.var_2652 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2361;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2358;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1170;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2652;
      }
   }
}
