package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2447:int;
      
      private var var_1725:String;
      
      private var var_2396:String;
      
      private var var_2614:Boolean;
      
      private var var_2613:Boolean;
      
      private var var_2615:int;
      
      private var var_2395:String;
      
      private var var_2612:String;
      
      private var var_1727:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2447 = param1.readInteger();
         this.var_1725 = param1.readString();
         this.var_2396 = param1.readString();
         this.var_2614 = param1.readBoolean();
         this.var_2613 = param1.readBoolean();
         param1.readString();
         this.var_2615 = param1.readInteger();
         this.var_2395 = param1.readString();
         this.var_2612 = param1.readString();
         this.var_1727 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2447;
      }
      
      public function get avatarName() : String
      {
         return this.var_1725;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2396;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2614;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2613;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2615;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2395;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2612;
      }
      
      public function get realName() : String
      {
         return this.var_1727;
      }
   }
}
