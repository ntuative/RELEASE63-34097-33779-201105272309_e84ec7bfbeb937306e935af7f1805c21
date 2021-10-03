package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2116:int = 16777215;
      
      public static const const_1347:int = 8191;
      
      public static const const_1148:int = 8191;
      
      public static const const_2143:int = 1;
      
      public static const const_1320:int = 1;
      
      public static const const_1133:int = 1;
      
      private static var var_560:uint = 0;
      
      private static var var_559:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1347)
         {
            param2 = const_1347;
         }
         else if(param2 < const_1320)
         {
            param2 = const_1320;
         }
         if(param3 > const_1148)
         {
            param3 = const_1148;
         }
         else if(param3 < const_1133)
         {
            param3 = const_1133;
         }
         super(param2,param3,param4,param5);
         ++var_560;
         var_559 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_560;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_559;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_559 -= width * height * 4;
            --var_560;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
