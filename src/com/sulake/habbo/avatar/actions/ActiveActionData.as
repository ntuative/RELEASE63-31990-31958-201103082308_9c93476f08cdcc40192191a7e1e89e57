package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_1597:String = "";
      
      private var _actionParameter:String = "";
      
      private var var_1035:IActionDefinition;
      
      private var var_2129:int = 0;
      
      private var var_2130:String;
      
      public function ActiveActionData(param1:String, param2:String = "", param3:int = 0)
      {
         super();
         this.var_1597 = param1;
         this._actionParameter = param2;
         this.var_2129 = param3;
      }
      
      public function get actionType() : String
      {
         return this.var_1597;
      }
      
      public function get actionParameter() : String
      {
         return this._actionParameter;
      }
      
      public function get definition() : IActionDefinition
      {
         return this.var_1035;
      }
      
      public function get id() : String
      {
         if(this.var_1035 == null)
         {
            return "";
         }
         return this.var_1035.id + "_" + this._actionParameter;
      }
      
      public function set actionParameter(param1:String) : void
      {
         this._actionParameter = param1;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         this.var_1035 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1597 = null;
         this._actionParameter = null;
         this.var_1035 = null;
      }
      
      public function get startFrame() : int
      {
         return this.var_2129;
      }
      
      public function get overridingAction() : String
      {
         return this.var_2130;
      }
      
      public function set overridingAction(param1:String) : void
      {
         this.var_2130 = param1;
      }
   }
}
