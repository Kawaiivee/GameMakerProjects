/// @description Player Controls
// You can write your code in this editor
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check_pressed(vk_down) ||  keyboard_check_pressed(ord("S"));
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

var move = key_right - key_left;

h_spd = move * move_spd;


//Check walls left and right
if(!place_meeting(x, y, obj_tile)){
	h_spd = 0;
}

//Check walls above and below
if(place_meeting(x, y, obj_tile)){
	while(!place_meeting(x, y,obj_tile)){
		v_spd = v_spd + grv_spd;
	}
	v_spd = 0;
}

if(key_up){
	v_spd = -1*jump_spd;
}

x = x + h_spd;
y = y + v_spd;


//Sprite changing stuff
if(move != 0){
	sprite_index = spr_player_move;
}
else{
	sprite_index = spr_player_idle;
}

if(h_spd != 0) image_xscale = sign(h_spd);

