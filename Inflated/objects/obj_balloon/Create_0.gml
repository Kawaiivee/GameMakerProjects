/// @description create different color
// You can write your code in this editor
image_speed = 0;
if(global.balloon_count > 7){		//currently only 6 balloons, change to more for more colors
	global.balloon_count = 0;	
}
if(global.balloon_count == 7 || room == rm_level_epilogue){
	sprite_index = spr_player_idle;
	global.balloon_count = 0;	
	exit;
}
image_index = global.balloon_count;
global.balloon_count += 1;