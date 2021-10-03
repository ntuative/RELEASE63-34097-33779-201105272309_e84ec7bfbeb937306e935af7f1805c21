package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2130:int = 0;
      
      public static const const_1748:int = 1;
      
      public static const const_1727:int = 2;
      
      public static const const_2055:int = 3;
      
      public static const const_2016:int = 4;
      
      public static const const_2168:int = 5;
      
      public static const const_1897:int = 10;
      
      public static const const_2160:int = 11;
      
      public static const const_2104:int = 12;
      
      public static const const_2060:int = 13;
      
      public static const const_2173:int = 16;
      
      public static const const_2098:int = 17;
      
      public static const const_2164:int = 18;
      
      public static const const_2137:int = 19;
      
      public static const const_2115:int = 20;
      
      public static const const_2162:int = 22;
      
      public static const const_2005:int = 23;
      
      public static const const_2213:int = 24;
      
      public static const const_2125:int = 25;
      
      public static const const_2028:int = 26;
      
      public static const const_2204:int = 27;
      
      public static const const_2163:int = 28;
      
      public static const const_2066:int = 29;
      
      public static const const_2070:int = 100;
      
      public static const const_2149:int = 101;
      
      public static const const_2080:int = 102;
      
      public static const const_2091:int = 103;
      
      public static const const_2189:int = 104;
      
      public static const const_2033:int = 105;
      
      public static const const_2074:int = 106;
      
      public static const const_2182:int = 107;
      
      public static const const_2151:int = 108;
      
      public static const const_2054:int = 109;
      
      public static const const_2068:int = 110;
      
      public static const const_2178:int = 111;
      
      public static const const_2206:int = 112;
      
      public static const const_2142:int = 113;
      
      public static const const_2111:int = 114;
      
      public static const const_2132:int = 115;
      
      public static const const_2072:int = 116;
      
      public static const const_2179:int = 117;
      
      public static const const_2128:int = 118;
      
      public static const const_2157:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1748:
            case const_1897:
               return "banned";
            case const_1727:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
