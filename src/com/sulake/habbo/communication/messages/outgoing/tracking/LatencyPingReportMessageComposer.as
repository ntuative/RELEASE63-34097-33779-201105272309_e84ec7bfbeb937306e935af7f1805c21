package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2832:int;
      
      private var var_2833:int;
      
      private var var_2834:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2832 = param1;
         this.var_2833 = param2;
         this.var_2834 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2832,this.var_2833,this.var_2834];
      }
      
      public function dispose() : void
      {
      }
   }
}
