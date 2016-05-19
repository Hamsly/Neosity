///sc_multi_rect_col(x1,y1,x2,y2,obj,prec,notme) Returns and array of all objects of a type coliding with a retangle

var
x1 = argument0,
y1 = argument1,
x2 = argument2,
y2 = argument3,
obj = argument4,
prec = argument5,
notme = argument6,
overload = 100,
i = 0,
array = 0;

while(collision_rectangle(x1,y1,x2,y2,obj,prec,notme))
    {
    array[i] = collision_rectangle(x1,y1,x2,y2,obj,prec,notme)
    instance_deactivate_object(array[i]);
    
    ++i;
    if( i > overload)
        {
        array = -1;
        show_error("Stuck in multy collision loop. aborting loop",false);
        break;
        }
    }    

instance_activate_object(obj);

    
return array;
