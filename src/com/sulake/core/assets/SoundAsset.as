package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_196:Sound = null;
      
      private var var_1782:AssetTypeDeclaration;
      
      private var var_1105:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1782 = param1;
         this.var_1105 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1105;
      }
      
      public function get content() : Object
      {
         return this.var_196 as Object;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1782;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_196 = null;
            this.var_1782 = null;
            this.var_1105 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(this.var_196)
            {
               this.var_196.close();
            }
            this.var_196 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(this.var_196)
            {
               this.var_196.close();
            }
            this.var_196 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(this.var_196)
            {
               this.var_196.close();
            }
            this.var_196 = SoundAsset(param1).var_196;
            return;
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            this.var_196 = SoundAsset(param1).var_196;
         }
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
