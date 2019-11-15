/// @description Basic Movement For Boy
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check_pressed(vk_down) ||  keyboard_check_pressed(ord("S"));
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_space = keyboard_check_pressed(vk_space);

//blow candle and release balloons
if(key_space){
	obj_table.candle_on = false;
}

var move = key_right - key_left;

//Check walls left and right
if(place_meeting(x+h_spd, y, obj_tile)){
	while(!place_meeting(x+sign(h_spd), y, obj_tile)){
		x = x + sign(h_spd);
	}
	h_spd = 0;
}
h_spd = move * move_spd;
x = x + h_spd;

//flip image correctly
if(move == 0){
	image_speed = 0;
}
else{
	image_speed = room_speed/10;
}	
if(h_spd != 0) image_xscale = sign(h_spd);