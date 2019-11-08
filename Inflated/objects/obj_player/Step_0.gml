/// @description Controls & Calc Pos
// You can write your code in this editor
//alarm[0] makes it so that you can't spam jump inputs too fast

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check_pressed(vk_down) ||  keyboard_check_pressed(ord("S"));
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

var move = key_right - key_left;

//h_spd calc
h_spd = move * move_spd;

//v_spd calc
if(grv_spd > jump_spd/4){
	grv_spd = -1*jump_spd/4;
}
v_spd = v_spd + grv_spd;


//Check walls left and right
if(place_meeting(x+h_spd, y, obj_tile)){
	while(!place_meeting(x+sign(h_spd), y, obj_tile)){
		x = x + sign(h_spd);
	}
	h_spd = 0;
}

//Check walls above and below
if(place_meeting(x, y+v_spd, obj_tile)){
	while(!place_meeting(x, y+sign(v_spd), obj_tile)){
		y = y + sign(v_spd);
	}
	v_spd = 0;
}

//Check if airborne
if(!place_meeting(x, y+1, obj_tile)) on_ground = false;
else on_ground = true;

//Jump
if(key_up && can_jump && air > 0){
	//generatte random jump sound
	var temp_snd = jump_sounds[irandom_range(0,4)];
	audio_play_sound(temp_snd, 0, false);
	audio_sound_gain(temp_snd, .75, 0);
	
	//time the jumps
	can_jump = false;
	alarm[0] = room_speed/4;	//can only jump 4 times per second
	
	//Lose air
	air = air - irandom_range(1,5);
	
	//physics calc
	v_spd = -1*jump_spd;
}

//Got Stuck In Wall?
if(place_meeting(x,y,obj_tile)){
	for(var i = 0; i < 64; i++){
		//Left
		if(!place_meeting(x - i, y, obj_tile)){
			x -= i;
			break;
		}
		//Right
		if(!place_meeting(x + i, y, obj_tile)){
			x += i;
			break;
		}
		//Above
		if(!place_meeting(x, y - i, obj_tile)){
			y -= i;
			break;
		}
		//Below
		if(!place_meeting(x, y + i, obj_tile)){
			y += i;
			break;
		}
		//TopLeft
		if(!place_meeting(x - i, y - i, obj_tile)){
			x -= i;
			y -= i;
			break;
		}
		//TopRight
		if(!place_meeting(x + i, y - i, obj_tile)){
			x += i;
			y -= i;
			break;
		}
		//BottomLeft
		if(!place_meeting(x - i, y + i, obj_tile)){
			x -= i;
			y += i;
			break;
		}
		//BottomRight
		if(!place_meeting(x + i, y + i, obj_tile)){
			x += i;
			y += i;
			break;
		}
	}
}

//move x pos
x = x + h_spd;
//Move y pos
y = y + v_spd;

//Sprite changing stuff
if(on_ground && move != 0) sprite_index = spr_player_move;
else if(!on_ground) sprite_index = spr_player_air;
else sprite_index = spr_player_idle;

if(h_spd != 0) image_xscale = sign(h_spd);