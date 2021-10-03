package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2023:IID;
      
      private var var_1102:Boolean;
      
      private var var_1308:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2023 = param1;
         this.var_1308 = new Array();
         this.var_1102 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2023;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1102;
      }
      
      public function get receivers() : Array
      {
         return this.var_1308;
      }
      
      public function dispose() : void
      {
         if(!this.var_1102)
         {
            this.var_1102 = true;
            this.var_2023 = null;
            while(this.var_1308.length > 0)
            {
               this.var_1308.pop();
            }
            this.var_1308 = null;
         }
      }
   }
}
