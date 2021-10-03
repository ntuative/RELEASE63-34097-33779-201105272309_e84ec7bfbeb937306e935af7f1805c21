package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_474:Vector3D;
      
      private var var_1751:Vector3D;
      
      private var var_2377:Boolean = false;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         this.var_1751 = new Vector3D();
         super();
         this.var_474 = new Vector3D(param1,param2,param3);
         if(param1 != 0 || param2 != 0 || param3 != 0)
         {
            this.var_2377 = true;
         }
      }
      
      public function get location() : Vector3D
      {
         return this.var_474;
      }
      
      public function get transformedLocation() : Vector3D
      {
         return this.var_1751;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         if(this.var_2377)
         {
            this.var_1751 = param1.vectorMultiplication(this.var_474);
         }
      }
   }
}
