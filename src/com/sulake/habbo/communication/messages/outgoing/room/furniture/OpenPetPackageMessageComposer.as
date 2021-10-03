package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_222:int;
      
      private var var_2209:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_222 = param1;
         this.var_2209 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_222,this.var_2209];
      }
      
      public function dispose() : void
      {
      }
   }
}
