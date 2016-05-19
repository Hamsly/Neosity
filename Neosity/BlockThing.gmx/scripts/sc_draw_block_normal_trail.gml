///sc_draw_block_normal_trail(x,y,width,height,color)
var
xx = argument0,
yy = argument1,
width = argument2 * 2,
height = argument3,
col = argument4;  

draw_primitive_begin(pr_trianglestrip);
draw_vertex_colour(xx,yy,col,0.5);
draw_vertex_colour(xx,yy - height,col,0);
draw_vertex_colour(xx + width,yy,col,0.5);
draw_vertex_colour(xx + width,yy - height,col,0);
draw_primitive_end();

