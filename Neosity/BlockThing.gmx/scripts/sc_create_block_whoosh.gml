///sc_create_block_whoosh(x,y,width,height,decay,color)

var
xx = argument0,
yy = argument1,
w = argument2,
h = argument3,
ws = argument4,
col = argument5;

obj = instance_create(xx,yy,o_block_whoosh)
obj.height = h
obj.width = w
obj.width_smoothing =ws
obj.col = col

return obj;
