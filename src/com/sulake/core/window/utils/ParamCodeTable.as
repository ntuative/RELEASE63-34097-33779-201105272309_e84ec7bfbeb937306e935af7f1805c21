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
         param1["null"] = const_213;
         param1["bound_to_parent_rect"] = const_99;
         param1["child_window"] = const_1136;
         param1["embedded_controller"] = const_1292;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_988;
         param1["mouse_dragging_target"] = const_297;
         param1["mouse_dragging_trigger"] = const_386;
         param1["mouse_scaling_target"] = const_342;
         param1["mouse_scaling_trigger"] = const_493;
         param1["horizontal_mouse_scaling_trigger"] = const_262;
         param1["vertical_mouse_scaling_trigger"] = const_243;
         param1["observe_parent_input_events"] = const_1131;
         param1["optimize_region_to_layout_size"] = const_623;
         param1["parent_window"] = const_1269;
         param1["relative_horizontal_scale_center"] = const_214;
         param1["relative_horizontal_scale_fixed"] = const_138;
         param1["relative_horizontal_scale_move"] = const_405;
         param1["relative_horizontal_scale_strech"] = const_428;
         param1["relative_scale_center"] = const_1248;
         param1["relative_scale_fixed"] = const_696;
         param1["relative_scale_move"] = const_1200;
         param1["relative_scale_strech"] = const_1158;
         param1["relative_vertical_scale_center"] = const_224;
         param1["relative_vertical_scale_fixed"] = const_163;
         param1["relative_vertical_scale_move"] = const_235;
         param1["relative_vertical_scale_strech"] = const_330;
         param1["on_resize_align_left"] = const_783;
         param1["on_resize_align_right"] = const_481;
         param1["on_resize_align_center"] = const_574;
         param1["on_resize_align_top"] = const_731;
         param1["on_resize_align_bottom"] = const_547;
         param1["on_resize_align_middle"] = const_508;
         param1["on_accommodate_align_left"] = const_1247;
         param1["on_accommodate_align_right"] = const_485;
         param1["on_accommodate_align_center"] = const_884;
         param1["on_accommodate_align_top"] = const_1316;
         param1["on_accommodate_align_bottom"] = const_560;
         param1["on_accommodate_align_middle"] = const_933;
         param1["route_input_events_to_parent"] = const_577;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1305;
         param1["scalable_with_mouse"] = const_1204;
         param1["reflect_horizontal_resize_to_parent"] = const_518;
         param1["reflect_vertical_resize_to_parent"] = const_591;
         param1["reflect_resize_to_parent"] = const_341;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1153;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
