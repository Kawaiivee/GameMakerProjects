/// @description Controls, Shoot, Hit Detection
//Grab input
key_up = (keyboard_check(ord("W")) || keyboard_check(vk_up));
key_down = (keyboard_check(ord("S")) || keyboard_check(vk_down));
key_left = (keyboard_check(ord("A")) || keyboard_check(vk_left));
key_right = (keyboard_check(ord("D")) || keyboard_check(vk_right));
key_space = (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_rcontrol));

//What ship is wanted
if(keyboard_check_pressed(ord("1"))) ship_type = "A";
if(keyboard_check_pressed(ord("2"))) ship_type = "E";
if(keyboard_check_pressed(ord("3"))) ship_type = "I";
if(keyboard_check_pressed(ord("4"))) ship_type = "O";
if(keyboard_check_pressed(ord("5"))) ship_type = "U";

//Quick Select Next In "Queue"
if(keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(ord("Z"))){
	switch(ship_type){
		case "A":
			ship_type = "U";
			break;
		case "E":
			ship_type = "A";
			break;
		case "I":
			ship_type = "E";
			break;
		case "O":
			ship_type = "I";
			break;
		case "U":
			ship_type = "O";
			break;
		default:
			break;
	}
}

if(keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("C"))){
	switch(ship_type){
		case "A":
			ship_type = "E";
			break;
		case "E":
			ship_type = "I";
			break;
		case "I":
			ship_type = "O";
			break;
		case "O":
			ship_type = "U";
			break;
		case "U":
			ship_type = "A";
			break;
		default:
			break;
	}
}

//Ship Switch
switch(ship_type){
	case "A":
		image_index = 0;
		break;
	case "E":
		image_index = 1;
		break;
	case "I":
		image_index = 2;
		break;
	case "O":
		image_index = 3;
		break;
	case "U":
		image_index = 4;
		break;
	default:
		break;
}

//Physics
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

//Shoot
if(key_space){
	audio_play_sound(snd_shot, 1, false);
	instance_create_layer(x + 20, y, "Instances", obj_player_bullet);
}