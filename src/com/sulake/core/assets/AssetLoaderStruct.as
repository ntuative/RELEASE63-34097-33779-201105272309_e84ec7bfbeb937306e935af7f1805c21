package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_966:IAssetLoader;
      
      private var var_2224:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2224 = param1;
         this.var_966 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2224;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_966;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_966 != null)
            {
               if(!this.var_966.disposed)
               {
                  this.var_966.dispose();
                  this.var_966 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
