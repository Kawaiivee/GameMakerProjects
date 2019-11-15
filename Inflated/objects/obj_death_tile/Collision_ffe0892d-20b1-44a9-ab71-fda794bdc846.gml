/// @description
obj_player.air = floor(obj_player.air/3 - 1);
if(obj_player.air < 0){
	obj_player.air = 0;
}
obj_player.sprite_index = spr_player_pop;