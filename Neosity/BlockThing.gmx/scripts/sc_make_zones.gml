///sc_make_zones(number of zones,height,width,y_offset,number of colours, start colour)
num = argument0;
height = argument1;
width = argument2;
y_offset = argument3;
col_num = argument4 - 1;
start_col = argument5;

var 
output = 0,
i = 0,
current_col = start_col;
height_increment = (height / num);

repeat(num)
    {
    output[i,0] = (height_increment * i) + y_offset; 
    output[i,1] = (height_increment * (i+1)) - 1 + y_offset; 
    output[i,2] = current_col;
    output[i,3] = width;
    ++i;
    current_col += 1
    if (current_col > col_num)
        {
        current_col = 0;
        }
    }
    
return output;
