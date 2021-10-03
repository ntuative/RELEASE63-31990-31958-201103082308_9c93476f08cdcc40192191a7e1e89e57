package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1614:String;
      
      private var var_1770:int;
      
      private var var_2374:Boolean;
      
      private var var_2378:Boolean;
      
      private var var_2375:int;
      
      private var var_2372:int;
      
      private var var_444:ICatalogPage;
      
      private var var_2373:int;
      
      private var var_2377:int;
      
      private var var_2376:int;
      
      private var var_2490:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1614 = param2;
         this.var_1770 = param3;
         this.var_2374 = param4;
         this.var_2378 = param5;
         this.var_2375 = param6;
         this.var_2372 = param7;
         this.var_2373 = param8;
         this.var_2377 = param9;
         this.var_2376 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1614;
      }
      
      public function get price() : int
      {
         return this.var_1770;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2374;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2378;
      }
      
      public function get periods() : int
      {
         return this.var_2375;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2372;
      }
      
      public function get year() : int
      {
         return this.var_2373;
      }
      
      public function get month() : int
      {
         return this.var_2377;
      }
      
      public function get day() : int
      {
         return this.var_2376;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_178;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1770;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_444;
      }
      
      public function get priceType() : String
      {
         return Offer.const_898;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1614;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_444 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2490;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2490 = param1;
      }
   }
}
