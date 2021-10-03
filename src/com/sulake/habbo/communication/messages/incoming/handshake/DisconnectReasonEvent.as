package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1876:int = 0;
      
      public static const const_1625:int = 1;
      
      public static const const_1489:int = 2;
      
      public static const const_1875:int = 3;
      
      public static const const_1763:int = 4;
      
      public static const const_1830:int = 5;
      
      public static const const_1503:int = 10;
      
      public static const const_1882:int = 11;
      
      public static const const_1753:int = 12;
      
      public static const const_1893:int = 13;
      
      public static const const_1750:int = 16;
      
      public static const const_1815:int = 17;
      
      public static const const_1775:int = 18;
      
      public static const const_1954:int = 19;
      
      public static const const_1841:int = 20;
      
      public static const const_1932:int = 22;
      
      public static const const_1785:int = 23;
      
      public static const const_1812:int = 24;
      
      public static const const_1807:int = 25;
      
      public static const const_1866:int = 26;
      
      public static const const_1940:int = 27;
      
      public static const const_1912:int = 28;
      
      public static const const_1783:int = 29;
      
      public static const const_1933:int = 100;
      
      public static const const_1857:int = 101;
      
      public static const const_1782:int = 102;
      
      public static const const_1831:int = 103;
      
      public static const const_1931:int = 104;
      
      public static const const_1877:int = 105;
      
      public static const const_1790:int = 106;
      
      public static const const_1862:int = 107;
      
      public static const const_1864:int = 108;
      
      public static const const_1860:int = 109;
      
      public static const const_1737:int = 110;
      
      public static const const_1781:int = 111;
      
      public static const const_1743:int = 112;
      
      public static const const_1744:int = 113;
      
      public static const const_1761:int = 114;
      
      public static const const_1928:int = 115;
      
      public static const const_1836:int = 116;
      
      public static const const_1746:int = 117;
      
      public static const const_1898:int = 118;
      
      public static const const_1846:int = 119;
       
      
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
            case const_1625:
            case const_1503:
               return "banned";
            case const_1489:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
