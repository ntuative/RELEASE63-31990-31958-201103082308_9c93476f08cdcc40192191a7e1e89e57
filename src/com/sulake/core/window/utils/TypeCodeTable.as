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
         param1["background"] = const_712;
         param1["bitmap"] = const_840;
         param1["border"] = const_737;
         param1["border_notify"] = const_1533;
         param1["button"] = const_457;
         param1["button_thick"] = const_640;
         param1["button_icon"] = const_1561;
         param1["button_group_left"] = const_752;
         param1["button_group_center"] = const_879;
         param1["button_group_right"] = const_799;
         param1["canvas"] = const_775;
         param1["checkbox"] = const_691;
         param1["closebutton"] = const_1166;
         param1["container"] = const_387;
         param1["container_button"] = const_855;
         param1["display_object_wrapper"] = const_830;
         param1["dropmenu"] = const_422;
         param1["dropmenu_item"] = const_434;
         param1["frame"] = const_383;
         param1["frame_notify"] = const_1441;
         param1["header"] = const_633;
         param1["html"] = const_1057;
         param1["icon"] = const_1093;
         param1["itemgrid"] = const_1095;
         param1["itemgrid_horizontal"] = const_544;
         param1["itemgrid_vertical"] = const_660;
         param1["itemlist"] = const_1187;
         param1["itemlist_horizontal"] = const_398;
         param1["itemlist_vertical"] = const_343;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1497;
         param1["menu"] = const_1612;
         param1["menu_item"] = const_1633;
         param1["submenu"] = const_1176;
         param1["minimizebox"] = const_1600;
         param1["notify"] = const_1596;
         param1["null"] = const_738;
         param1["password"] = const_714;
         param1["radiobutton"] = const_789;
         param1["region"] = const_585;
         param1["restorebox"] = const_1376;
         param1["scaler"] = const_804;
         param1["scaler_horizontal"] = const_1626;
         param1["scaler_vertical"] = const_1413;
         param1["scrollbar_horizontal"] = const_530;
         param1["scrollbar_vertical"] = const_836;
         param1["scrollbar_slider_button_up"] = const_1113;
         param1["scrollbar_slider_button_down"] = const_1170;
         param1["scrollbar_slider_button_left"] = const_1105;
         param1["scrollbar_slider_button_right"] = const_1133;
         param1["scrollbar_slider_bar_horizontal"] = const_1048;
         param1["scrollbar_slider_bar_vertical"] = const_1202;
         param1["scrollbar_slider_track_horizontal"] = const_1123;
         param1["scrollbar_slider_track_vertical"] = const_1201;
         param1["scrollable_itemlist"] = const_1631;
         param1["scrollable_itemlist_vertical"] = const_522;
         param1["scrollable_itemlist_horizontal"] = const_1011;
         param1["selector"] = const_828;
         param1["selector_list"] = const_670;
         param1["submenu"] = const_1176;
         param1["tab_button"] = const_534;
         param1["tab_container_button"] = const_1192;
         param1["tab_context"] = const_404;
         param1["tab_content"] = const_1089;
         param1["tab_selector"] = const_696;
         param1["text"] = const_438;
         param1["input"] = const_825;
         param1["toolbar"] = const_1494;
         param1["tooltip"] = const_401;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
