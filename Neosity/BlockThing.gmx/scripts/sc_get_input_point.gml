///sc_get_input_point(obj)

object = argument0
var i = 0, out_put = noone, lowest_y = 0;

repeat(instance_number(object))
    {
    var obj = instance_find(object,i)
    
    if (sc_is_within(o_input_overlord.tap_posx,obj.x - width,obj.x + width ) && sc_is_within(o_input_overlord.tap_posy,obj.y - height,obj.y + height))
        {
        if (obj.y > lowest_y)
            {
            out_put = obj
            lowest_y = obj.y
            }
        }
    ++i
    }
return out_put
