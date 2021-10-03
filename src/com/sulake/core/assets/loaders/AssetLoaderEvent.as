package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_27:String = "AssetLoaderEventComplete";
      
      public static const const_1006:String = "AssetLoaderEventProgress";
      
      public static const const_1026:String = "AssetLoaderEventUnload";
      
      public static const const_1077:String = "AssetLoaderEventStatus";
      
      public static const const_46:String = "AssetLoaderEventError";
      
      public static const const_1098:String = "AssetLoaderEventOpen";
       
      
      private var var_384:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_384 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_384;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_384);
      }
   }
}
