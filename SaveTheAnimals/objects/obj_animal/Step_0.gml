/// @description Insert description here
// You can write your code in this editor
key_left = (keyboard_check(ord("A")) || keyboard_check(vk_left));
key_right = (keyboard_check(ord("D")) || keyboard_check(vk_right));

var move = (key_right - key_left);
h_spd = move * 6;
if(place_meeting(x+h_spd, y, obj_tree)){
	while(!place_meeting(x+sign(h_spd), y, obj_tree)){
		x = x + sign(h_spd);
	}
	h_spd = 0;
}

x = x + h_spd;
if(move != 0) image_xscale = sign(move);