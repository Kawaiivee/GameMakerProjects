/// @description Controls and Physics

//Setup keyboard check

//Primary Controls
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_down = keyboard_check(vk_down);
key_up = keyboard_check_pressed(vk_up);


//Secondary Controls
if(key_left == 0) key_left = keyboard_check(ord("A"));
if(key_right == 0) key_right = keyboard_check(ord("D"));
if(key_down == 0) key_down = keyboard_check(ord("S"));
if(key_up == 0) key_up = keyboard_check_pressed(ord("W"));

//Calculate Movement
var move = key_right - key_left;	//calculates direction
h_sp = move * move_sp;
v_sp = v_sp + grv_sp;

//if key_up is pressed while we are touching the ground -- jump
if(place_meeting(x, y + 1, obj_wall) && (key_up)){
	audio_play_sound(snd_jump,global.sfx_priority,false);
	v_sp = -1*jump_sp
}

//same as normal jumping, but also holding down to jump higher -- super jump
if(place_meeting(x, y + 1, obj_wall) && (key_up) && (key_down)){
	audio_play_sound(snd_jump,global.sfx_priority,false);
	v_sp = -1*super_jump_sp
}

//X-Axis Collision Checking
//Check if colliding with a wall
if(place_meeting(x + h_sp, y, obj_wall)){
	while(!place_meeting(x + sign(h_sp), y, obj_wall)){
		x = x + sign(h_sp);
	}
	h_sp = 0;	//Running into the wall
}

//Y-Axis Collision Checking
//Check if colliding with floor or ceiling
if(place_meeting(x, y + v_sp, obj_wall)){
	while(!place_meeting(x, y + sign(v_sp), obj_wall)){
		y = y + sign(v_sp);
	}
	v_sp = 0;	//Hit wall from below
}

//Change the object's actual x and y position
x = x + h_sp;
y = y + v_sp;

//Animation via sprites

//Airborne
if(!place_meeting(x, y + 1, obj_wall)){	//If we are in the air
	sprite_index = spr_player_air;		//change to air sprite
	image_speed = 0;					//just the first frame
	
	//Rising vs Falling on the jump
	if(sign(v_sp) > 0) image_index = 1; else image_index = 0;
}
else{									//We are standing or running on ground
	image_speed = 1;					//play the animation at sprite's speed
	if(h_sp != 0) sprite_index = spr_player_move; else sprite_index = spr_player_still;
	if(key_down) sprite_index = spr_player_crouch;
}

//Face the correct direction using scale to flip
if(h_sp != 0) image_xscale = sign(h_sp);