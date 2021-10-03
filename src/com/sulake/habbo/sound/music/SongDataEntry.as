package com.sulake.habbo.sound.music
{
   import com.sulake.habbo.communication.messages.incoming.sound.PlayListEntry;
   import com.sulake.habbo.sound.IHabboSound;
   
   public class SongDataEntry extends PlayListEntry
   {
       
      
      private var var_1173:IHabboSound;
      
      public function SongDataEntry(param1:int, param2:int, param3:String, param4:String, param5:IHabboSound)
      {
         this.var_1173 = param5;
         super(param1,param2,param3,param4);
      }
      
      public function get soundObject() : IHabboSound
      {
         return this.var_1173;
      }
   }
}
