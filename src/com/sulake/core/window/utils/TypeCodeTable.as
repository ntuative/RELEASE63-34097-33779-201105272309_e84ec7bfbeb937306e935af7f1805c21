package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_962;
         param1["bitmap"] = const_700;
         param1["border"] = const_947;
         param1["border_notify"] = const_1654;
         param1["bubble"] = const_723;
         param1["bubble_pointer_up"] = const_1348;
         param1["bubble_pointer_right"] = const_1202;
         param1["bubble_pointer_down"] = const_1224;
         param1["bubble_pointer_left"] = const_1226;
         param1["button"] = const_635;
         param1["button_thick"] = const_693;
         param1["button_icon"] = const_1643;
         param1["button_group_left"] = const_938;
         param1["button_group_center"] = const_972;
         param1["button_group_right"] = const_759;
         param1["canvas"] = const_894;
         param1["checkbox"] = const_776;
         param1["closebutton"] = const_1143;
         param1["container"] = const_439;
         param1["container_button"] = const_866;
         param1["display_object_wrapper"] = const_874;
         param1["dropmenu"] = const_634;
         param1["dropmenu_item"] = const_629;
         param1["frame"] = const_400;
         param1["frame_notify"] = const_1662;
         param1["header"] = const_932;
         param1["html"] = const_1234;
         param1["icon"] = const_1339;
         param1["itemgrid"] = const_1315;
         param1["itemgrid_horizontal"] = const_545;
         param1["itemgrid_vertical"] = const_786;
         param1["itemlist"] = const_1300;
         param1["itemlist_horizontal"] = const_371;
         param1["itemlist_vertical"] = const_423;
         param1["label"] = const_956;
         param1["maximizebox"] = const_1887;
         param1["menu"] = const_1785;
         param1["menu_item"] = const_1726;
         param1["submenu"] = const_1317;
         param1["minimizebox"] = const_1843;
         param1["notify"] = const_1751;
         param1["null"] = const_890;
         param1["password"] = const_813;
         param1["radiobutton"] = const_726;
         param1["region"] = const_527;
         param1["restorebox"] = const_1941;
         param1["scaler"] = const_506;
         param1["scaler_horizontal"] = const_1684;
         param1["scaler_vertical"] = const_1657;
         param1["scrollbar_horizontal"] = const_468;
         param1["scrollbar_vertical"] = const_954;
         param1["scrollbar_slider_button_up"] = const_1147;
         param1["scrollbar_slider_button_down"] = const_1245;
         param1["scrollbar_slider_button_left"] = const_1205;
         param1["scrollbar_slider_button_right"] = const_1303;
         param1["scrollbar_slider_bar_horizontal"] = const_1228;
         param1["scrollbar_slider_bar_vertical"] = const_1160;
         param1["scrollbar_slider_track_horizontal"] = const_1308;
         param1["scrollbar_slider_track_vertical"] = const_1140;
         param1["scrollable_itemlist"] = const_1665;
         param1["scrollable_itemlist_vertical"] = WINDOW_TYPE_SCROLLABLE_ITEMLIST_VERTICAL;
         param1["scrollable_itemlist_horizontal"] = const_1332;
         param1["selector"] = const_910;
         param1["selector_list"] = const_903;
         param1["submenu"] = const_1317;
         param1["tab_button"] = const_924;
         param1["tab_container_button"] = const_1213;
         param1["tab_context"] = const_413;
         param1["tab_content"] = const_1288;
         param1["tab_selector"] = const_810;
         param1["text"] = const_753;
         param1["input"] = const_819;
         param1["toolbar"] = const_1784;
         param1["tooltip"] = const_419;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
