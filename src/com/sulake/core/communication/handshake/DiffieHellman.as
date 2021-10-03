package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_968:BigInteger;
      
      private var var_2303:BigInteger;
      
      private var var_1712:BigInteger;
      
      private var var_2313:BigInteger;
      
      private var var_1411:BigInteger;
      
      private var var_1713:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1411 = param1;
         this.var_1713 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1411.toString() + ",generator: " + this.var_1713.toString() + ",secret: " + param1);
         this.var_968 = new BigInteger();
         this.var_968.fromRadix(param1,param2);
         this.var_2303 = this.var_1713.modPow(this.var_968,this.var_1411);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1712 = new BigInteger();
         this.var_1712.fromRadix(param1,param2);
         this.var_2313 = this.var_1712.modPow(this.var_968,this.var_1411);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2303.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2313.toRadix(param1);
      }
   }
}
