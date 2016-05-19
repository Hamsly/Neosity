///sc_get_swipe_dir()
var out = false;
if (o_input_overlord.right && !out)
    {
    return 0
    out = true
    }
if (o_input_overlord.up && !out)
    {
    return 1
    out = true
    }
if (o_input_overlord.left && !out)
    {
    return 2
    out = true
    }
if (o_input_overlord.down && !out)
    {
    return 3
    out = true
    }

return -1

