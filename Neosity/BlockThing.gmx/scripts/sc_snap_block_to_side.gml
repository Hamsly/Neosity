///sc_snap_block_to_side(x_dir , y_snap)

var 
center = room_width / 2,
swipe_direction = argument0,
ysnap = argument1,
can_move = true,
overload = 10000,
i = 0;
move_snap(1,ysnap)

if (swipe_direction != 0)
    {
    
    while (can_move)
        {            
        if (collision_rectangle(x+sign(swipe_direction),y,x+sign(swipe_direction)+(width*2) ,y+(height*2),o_block,true,true))
            {
            can_move = false;
            }
            
        if ((x - 1) < 0 || (x + (width*2) + 1) > room_width)   
            {
            can_move = false;
            } 
        
        if (can_move)
            {
            x += sign(swipe_direction)
            }
        else
            {
            break;
            }
                        
        ++i
        if ( i > overload)
            {
            break;
            show_error("stuck in loop",true)
            }
        }
    
    }   
