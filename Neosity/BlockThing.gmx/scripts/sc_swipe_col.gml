///sc_swipe_col(obj)
///returns Array of all objects of a type that have been swiped over
var obj = argument0;

if (o_input_overlord.input_tap_on)
    {
    return sc_multi_line_col(o_input_overlord.tap_posx,o_input_overlord.tap_posy,o_input_overlord.input_posx,o_input_overlord.input_posy,obj,true,true);
    }
else
    {
    return noone;
    }


