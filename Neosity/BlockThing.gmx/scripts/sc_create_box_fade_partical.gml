///sc_create_box_fade_partical(x,y,size,size_speed,start_alpha,fade,color)
xx = argument0
yy = argument1
sz = argument2
ssp = argument3
a = argument4
f = argument5
c = argument6

obj = instance_create(xx,yy,o_box_fade_partical);
obj.size = sz;
obj.size_speed = ssp;
obj.alpha = a
obj.fade = f;
obj.col = c;

return obj
