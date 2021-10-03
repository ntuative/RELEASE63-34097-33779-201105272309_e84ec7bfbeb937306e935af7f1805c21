package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2382:int = 0;
      
      private var var_1413:String = "";
      
      private var var_1717:String = "";
      
      private var var_2326:String = "";
      
      private var var_2567:String = "";
      
      private var var_1841:int = 0;
      
      private var var_2564:int = 0;
      
      private var var_2565:int = 0;
      
      private var var_1415:int = 0;
      
      private var var_2566:int = 0;
      
      private var var_1414:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2382 = param1;
         this.var_1413 = param2;
         this.var_1717 = param3;
         this.var_2326 = param4;
         this.var_2567 = param5;
         if(param6)
         {
            this.var_1841 = 1;
         }
         else
         {
            this.var_1841 = 0;
         }
         this.var_2564 = param7;
         this.var_2565 = param8;
         this.var_1415 = param9;
         this.var_2566 = param10;
         this.var_1414 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2382,this.var_1413,this.var_1717,this.var_2326,this.var_2567,this.var_1841,this.var_2564,this.var_2565,this.var_1415,this.var_2566,this.var_1414];
      }
   }
}
