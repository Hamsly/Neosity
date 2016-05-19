///sc_draw_stretching_raster_block(corner_sprite,v_side_sprite,h_side_sprite,middle_texture_sprite,width,height,color,alpha,middle_alpha_multiplier,x1,y1,x2,y2)
var 
corner = argument0,
v_side = argument1,
h_side = argument2,
side_w = sprite_get_width(h_side),
side_h = sprite_get_height(v_side),
tex = argument3,
width = argument4,
height = argument5,
col = argument6,
alpha = argument7,
mid_alpha = argument8,
x1 = argument9,
y1 = argument10,
x2 = argument11,
y2 = argument12;

//middle
var tex_width = sprite_get_width(tex);
draw_sprite_part_ext(tex,0,(tex_width / 2) - width ,0,width * 2, height * 2,x1,y1,1,1,col,alpha * mid_alpha)

//horizontal side
var 
xx = 0,
remain = (width * 2) mod side_w;

repeat((width * 2) div side_w )
    {        
    draw_sprite_ext(h_side,0,x1 + xx,y1,1, 1 , 0 ,col, alpha)
    draw_sprite_ext(h_side,0,x1 + xx,y2,1, -1 , 0 ,col, alpha)        
    xx += side_h
    }
    
draw_sprite_general(h_side,0,0,0,remain ,side_h,xx + x1,y1,1,-1,0,col,col,col,col,alpha)
draw_sprite_general(h_side,0,0,0,remain ,side_h,xx + x1,y2,1,1,0,col,col,col,col,alpha)

//vertical side
var 
yy = 0,
remain = (height * 2) mod side_h;

repeat((height * 2) div side_h )
    {        
    draw_sprite_ext(v_side,0,x2,y1 + (side_h / 2) + yy,1, 1 , 0 ,col, alpha)
    draw_sprite_ext(v_side,0,x1,y1 + (side_h / 2) + yy,1, 1 , 180 ,col, alpha)        
    yy += side_h
    }
    
draw_sprite_general(v_side,0,0,0,side_w,remain,x2,y1 + (side_h / 2) + yy - remain ,1,1,0,col,col,col,col,alpha)
draw_sprite_general(v_side,0,0,0,side_w,remain,x1,y1 + (side_h / 2) + yy,1,1,180,col,col,col,col,alpha)   


//corners
draw_sprite_ext(corner, 0 ,x2 , y2, 1,1,0,col,alpha);
draw_sprite_ext(corner, 0 ,x2 , y1, 1,1,90,col,alpha);
draw_sprite_ext(corner, 0 ,x1 , y1, 1,1,180,col,alpha);
draw_sprite_ext(corner, 0 ,x1 , y2, 1,1,270,col,alpha);
