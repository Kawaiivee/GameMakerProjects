/// @description Pop The Balloon!
obj_player.air = floor(obj_player.air*5/8 - 1);
if(obj_player.air < 0){
	obj_player.air = 0;
}