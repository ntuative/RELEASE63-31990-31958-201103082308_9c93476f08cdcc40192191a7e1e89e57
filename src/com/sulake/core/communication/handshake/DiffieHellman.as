package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_901:BigInteger;
      
      private var var_2336:BigInteger;
      
      private var var_1795:BigInteger;
      
      private var var_2533:BigInteger;
      
      private var var_1408:BigInteger;
      
      private var var_1794:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1408 = param1;
         this.var_1794 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1408.toString() + ",generator: " + this.var_1794.toString() + ",secret: " + param1);
         this.var_901 = new BigInteger();
         this.var_901.fromRadix(param1,param2);
         this.var_2336 = this.var_1794.modPow(this.var_901,this.var_1408);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1795 = new BigInteger();
         this.var_1795.fromRadix(param1,param2);
         this.var_2533 = this.var_1795.modPow(this.var_901,this.var_1408);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2336.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2533.toRadix(param1);
      }
   }
}
