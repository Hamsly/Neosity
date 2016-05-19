///sc_modifiy_player_hp(amount)
var input = argument0

if (instance_exists(o_game_overlord))
    {
    o_game_overlord.player_health += input;
    }
