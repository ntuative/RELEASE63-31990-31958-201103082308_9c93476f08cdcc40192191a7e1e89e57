package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_364:int = 1;
      
      public static const const_262:int = 2;
      
      public static const const_277:int = 3;
      
      public static const const_370:int = 4;
      
      public static const const_215:int = 5;
      
      public static const const_396:int = 1;
      
      public static const const_788:int = 2;
      
      public static const const_663:int = 3;
      
      public static const const_877:int = 4;
      
      public static const const_233:int = 5;
      
      public static const const_810:int = 6;
      
      public static const const_894:int = 7;
      
      public static const const_270:int = 8;
      
      public static const const_376:int = 9;
      
      public static const const_1779:int = 10;
      
      public static const const_889:int = 11;
      
      public static const const_562:int = 12;
       
      
      private var var_414:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_414 = new Array();
         this.var_414.push(new Tab(this._navigator,const_364,const_562,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_514));
         this.var_414.push(new Tab(this._navigator,const_262,const_396,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_514));
         this.var_414.push(new Tab(this._navigator,const_370,const_889,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1195));
         this.var_414.push(new Tab(this._navigator,const_277,const_233,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_514));
         this.var_414.push(new Tab(this._navigator,const_215,const_270,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_906));
         this.setSelectedTab(const_364);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_370;
      }
      
      public function get tabs() : Array
      {
         return this.var_414;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_414)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_414)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_414)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
