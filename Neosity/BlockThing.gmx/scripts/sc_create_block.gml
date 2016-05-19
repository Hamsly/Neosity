///sc_create_block(x,y,x_speed,y_speed,width,height,stopped,dir,colour_index)

var
xx = argument0,
yy = argument1,
x_speed = argument2,
y_speed = argument3,
w = argument4, 
h = argument5,
stop = argument6,
swipe = argument7,
colour = argument8,
obj;

obj = instance_create(xx,yy,o_block);
obj.x = xx;
obj.y = yy;
obj.y_sp = x_speed;
obj.x_sp = y_speed;
obj.width = w;
obj.height = h;
obj.stopped = stop;
obj.color_index = colour
obj.trail_lenght = 0

if (stop)
    {
    obj.swipe_dir = swipe
    }
else
    {
    obj.swipe_dir = 0
    }
    
with (obj)
    {
    snap = o_game_overlord.block_grid_snap

    var
    height_shave = height mod snap,
    width_shave = width mod snap;
    
    height -= height_shave;
    width -= width_shave;
    
    alpha = 1
    
    image_xscale = (width * 2) / sprite_width
    image_yscale = (height * 2) / sprite_height
    
    x -= width
    
    drop = true
    
    can_swipe = true
    
    selected = false
    can_select = true
    
    if (stopped)
        {
        can_swipe = false
        }
    }
    
return obj
