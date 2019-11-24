/// @description Controls, Shoot, Hit Detection
key_up = (keyboard_check(ord("W")) || keyboard_check(vk_up));
key_down = (keyboard_check(ord("S")) || keyboard_check(vk_down));
key_left = (keyboard_check(ord("A")) || keyboard_check(vk_left));
key_right = (keyboard_check(ord("D")) || keyboard_check(vk_right));

var x_move = move_spd*(key_right - key_left);
var y_move = move_spd*(key_down - key_up);

x += x_move;
y += y_move;

if(x < 0 + .5*sprite_width){
	x = 0 + .5*sprite_width;
}

if(x > room_width - .5*sprite_width){
	x = room_width - .5*sprite_width;
}

if(y < 0 + .15*sprite_height){
	y = room_height - .3*sprite_height;
}

if(y > room_height - .15*sprite_height){
	y = 0 + .3*sprite_height;
}