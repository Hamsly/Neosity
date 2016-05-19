///sc_melt_block(zone array,block color,side)

var
array = argument0,
col = argument1,
side = argument2,
i = 0;

if ((x - 1) <= 0 || (x + (width*2) + 1) >= room_width) 
    {
    repeat(array_height_2d(array))
        {
        
        if (col != array[i,2])
            {
            sp = o_game_overlord.off_side_melt_speed
            }
        else
            {
            sp = o_game_overlord.melt_speed
            }
            
        
        if (sign(side) = 1)
            {
            if (y > array[i,0] - 1 && (y + height*2) < array[i,1] + 1)
                {
                width -= sp
                x += (sp * 2) * sign(side) 
                }
            }
            
        if (sign(side) = -1)
            {
            if (y > array[i,0] - 1 && (y + height*2) < array[i,1] + 1)
                {
                width -= sp                 
                }
            }
        ++i
        }
    }

