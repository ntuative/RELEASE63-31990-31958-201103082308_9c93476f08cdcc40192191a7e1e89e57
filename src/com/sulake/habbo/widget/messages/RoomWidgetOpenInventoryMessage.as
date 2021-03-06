package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_866:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1110:String = "inventory_effects";
      
      public static const const_1140:String = "inventory_badges";
      
      public static const const_1523:String = "inventory_clothes";
      
      public static const const_1562:String = "inventory_furniture";
       
      
      private var var_2541:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_866);
         this.var_2541 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2541;
      }
   }
}
