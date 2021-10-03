package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_183;
         param1["bound_to_parent_rect"] = const_96;
         param1["child_window"] = const_1150;
         param1["embedded_controller"] = const_1111;
         param1["resize_to_accommodate_children"] = const_73;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_829;
         param1["mouse_dragging_target"] = const_268;
         param1["mouse_dragging_trigger"] = const_349;
         param1["mouse_scaling_target"] = const_286;
         param1["mouse_scaling_trigger"] = const_579;
         param1["horizontal_mouse_scaling_trigger"] = const_251;
         param1["vertical_mouse_scaling_trigger"] = const_220;
         param1["observe_parent_input_events"] = const_1189;
         param1["optimize_region_to_layout_size"] = const_500;
         param1["parent_window"] = const_1161;
         param1["relative_horizontal_scale_center"] = const_181;
         param1["relative_horizontal_scale_fixed"] = const_145;
         param1["relative_horizontal_scale_move"] = const_361;
         param1["relative_horizontal_scale_strech"] = const_360;
         param1["relative_scale_center"] = const_1200;
         param1["relative_scale_fixed"] = const_809;
         param1["relative_scale_move"] = const_1131;
         param1["relative_scale_strech"] = const_1205;
         param1["relative_vertical_scale_center"] = const_193;
         param1["relative_vertical_scale_fixed"] = const_148;
         param1["relative_vertical_scale_move"] = const_395;
         param1["relative_vertical_scale_strech"] = const_324;
         param1["on_resize_align_left"] = const_672;
         param1["on_resize_align_right"] = const_549;
         param1["on_resize_align_center"] = const_441;
         param1["on_resize_align_top"] = const_637;
         param1["on_resize_align_bottom"] = const_493;
         param1["on_resize_align_middle"] = const_431;
         param1["on_accommodate_align_left"] = const_1134;
         param1["on_accommodate_align_right"] = const_491;
         param1["on_accommodate_align_center"] = const_708;
         param1["on_accommodate_align_top"] = const_1114;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_751;
         param1["route_input_events_to_parent"] = const_467;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1179;
         param1["scalable_with_mouse"] = const_1014;
         param1["reflect_horizontal_resize_to_parent"] = const_462;
         param1["reflect_vertical_resize_to_parent"] = const_440;
         param1["reflect_resize_to_parent"] = const_297;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1033;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
