/// @description Basic Movement For Boy
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space);

//blow candle and release balloons
if(key_space){
	obj_table.candle_on = false;
}

var move = key_right - key_left;
h_spd = move * move_spd;

//Check walls left and right
if(x > room_width-16){
	x = 32;
}
if(x < 16){
	x = room_width - 32;
}

x = x + h_spd;

//flip image correctly
if(move == 0){
	image_speed = 0;
}
else{
	image_speed = room_speed/10;
}	
if(h_spd != 0) image_xscale = sign(h_spd);