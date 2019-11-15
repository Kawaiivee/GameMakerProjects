/// @description check if candle blown -- fly away
if(room == rm_level_intro){
	if(!obj_table.candle_on){
		y = y - irandom_range(1,4);
		x = x + irandom_range(-4, 4);
	}
	if(sprite_index == spr_player_idle && obj_table.candle_on){
		y = obj_birthday_boy.y + 20;
		x = obj_birthday_boy.x + 20;
	}
}

if(room == rm_level_epilogue && !obj_table.candle_on){
	if(y >= obj_birthday_boy.y){
		y = obj_birthday_boy.y;
		x = obj_birthday_boy.x+20;
	}
	else{
		y = y + 2;
		x = x + irandom_range(-1, 1);
	}
}