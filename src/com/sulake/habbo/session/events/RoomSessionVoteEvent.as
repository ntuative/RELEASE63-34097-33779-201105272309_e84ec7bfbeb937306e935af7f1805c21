package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_149:String = "RSPE_VOTE_QUESTION";
      
      public static const const_155:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1112:String = "";
      
      private var var_1565:Array;
      
      private var var_1230:Array;
      
      private var var_1986:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1565 = [];
         this.var_1230 = [];
         super(param1,param2,param7,param8);
         this.var_1112 = param3;
         this.var_1565 = param4;
         this.var_1230 = param5;
         if(this.var_1230 == null)
         {
            this.var_1230 = [];
         }
         this.var_1986 = param6;
      }
      
      public function get question() : String
      {
         return this.var_1112;
      }
      
      public function get choices() : Array
      {
         return this.var_1565.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1230.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1986;
      }
   }
}
