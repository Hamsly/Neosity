///sc_split_on_zone(side)
var
side = argument0,
left = o_game_overlord.left_zones,
right = o_game_overlord.right_zones,
i = 0;

if (side = -1)
    {
    repeat(array_height_2d(left))
        {
        
        if (y < left[i,0] && (y + height*2) > left[i,0])
            {
            
            var split_point = left[i,0]        
            
            sc_create_block(x + width + side,y,0,0,width,(split_point - y) / 2,true,swipe_dir,color_index)
            sc_create_block(x + width + side,split_point+1,0,0,width,height - ((split_point - y) /2),true,swipe_dir,color_index)
            
            instance_destroy();        
            }
        ++i
        }
    
    
    }
else if (side = 1)
    {
    repeat(array_height_2d(right))
        {
        
        if (y < right[i,0] && (y + height*2) > right[i,0])
            {
            
            var split_point = right[i,0]        
            
            sc_create_block(x + width + side,y,0,0,width,(split_point - y) / 2,true,swipe_dir,color_index)
            sc_create_block(x + width + side,split_point+1,0,0,width,height - ((split_point - y) /2),true,swipe_dir,color_index)
            
            instance_destroy();        
            }
        ++i
        }
    }

