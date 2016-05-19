///sc_draw_box(x,y,width,height,type,colour,alpha)
x1 = argument0
y1 = argument1
width = argument2
x2 =  x1 + (width * 2) - 1
height = argument3
y2 = y1 + (height * 2) - 1
type = argument4
col = argument5
alpha = argument6
draw_set_colour(col)

switch (type)
    {
    case 0:
    draw_set_alpha(alpha * 0.4);
    draw_rectangle(x1 ,y1 , x2, y2 ,false);
    draw_set_alpha(alpha);
    draw_rectangle(x1 , y1 ,x2 , y2 ,true);
    draw_set_blend_mode(bm_normal);
    break;
    
    case 1:
    
    sc_draw_stretching_raster_block(sp_block1_corner,sp_block1_v_side,sp_block1_h_side,sp_block1_middle,width,height,col,alpha,1,x1,y1,x2,y2);

    break;
    
    case 2:
    
    sc_draw_cropped_raster_block(sp_block1_corner,sp_block1_v_side,sp_block1_h_side,sp_block1_middle_tex,width,height,col,alpha,1,x1,y1,x2,y2);

    break;
    }
