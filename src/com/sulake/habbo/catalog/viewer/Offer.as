package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1402:String = "pricing_model_unknown";
      
      public static const const_564:String = "pricing_model_single";
      
      public static const const_541:String = "pricing_model_multi";
      
      public static const const_455:String = "pricing_model_bundle";
      
      public static const const_1423:String = "price_type_none";
      
      public static const const_898:String = "price_type_credits";
      
      public static const const_1073:String = "price_type_activitypoints";
      
      public static const const_1136:String = "price_type_credits_and_activitypoints";
       
      
      private var var_711:String;
      
      private var var_1080:String;
      
      private var _offerId:int;
      
      private var var_1695:String;
      
      private var var_1079:int;
      
      private var var_1078:int;
      
      private var var_1696:int;
      
      private var var_444:ICatalogPage;
      
      private var var_710:IProductContainer;
      
      private var var_2299:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1695 = param1.localizationId;
         this.var_1079 = param1.priceInCredits;
         this.var_1078 = param1.priceInActivityPoints;
         this.var_1696 = param1.activityPointType;
         this.var_444 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_444;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1695;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1079;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1078;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1696;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_710;
      }
      
      public function get pricingModel() : String
      {
         return this.var_711;
      }
      
      public function get priceType() : String
      {
         return this.var_1080;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2299;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2299 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1695 = "";
         this.var_1079 = 0;
         this.var_1078 = 0;
         this.var_1696 = 0;
         this.var_444 = null;
         if(this.var_710 != null)
         {
            this.var_710.dispose();
            this.var_710 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_711)
         {
            case const_564:
               this.var_710 = new SingleProductContainer(this,param1);
               break;
            case const_541:
               this.var_710 = new MultiProductContainer(this,param1);
               break;
            case const_455:
               this.var_710 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_711);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_711 = const_564;
            }
            else
            {
               this.var_711 = const_541;
            }
         }
         else if(param1.length > 1)
         {
            this.var_711 = const_455;
         }
         else
         {
            this.var_711 = const_1402;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1079 > 0 && this.var_1078 > 0)
         {
            this.var_1080 = const_1136;
         }
         else if(this.var_1079 > 0)
         {
            this.var_1080 = const_898;
         }
         else if(this.var_1078 > 0)
         {
            this.var_1080 = const_1073;
         }
         else
         {
            this.var_1080 = const_1423;
         }
      }
   }
}
