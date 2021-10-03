package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1389:IID;
      
      private var var_1655:String;
      
      private var var_108:IUnknown;
      
      private var var_717:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1389 = param1;
         this.var_1655 = getQualifiedClassName(this.var_1389);
         this.var_108 = param2;
         this.var_717 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1389;
      }
      
      public function get iis() : String
      {
         return this.var_1655;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_108;
      }
      
      public function get references() : uint
      {
         return this.var_717;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_108 == null;
      }
      
      public function dispose() : void
      {
         this.var_1389 = null;
         this.var_1655 = null;
         this.var_108 = null;
         this.var_717 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_717;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_717) : uint(0);
      }
   }
}
