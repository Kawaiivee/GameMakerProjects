/// @description Controls and Physics

//Setup keyboard check

//Primary Controls and Secondary Controls
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check(vk_down) ||  keyboard_check(ord("S"));
key_down_released = keyboard_check_released(vk_down) || keyboard_check_released(ord("S"));
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

//Slingshot or not
//TODO

//Calculate Movement
var move = key_right - key_left;	//calculates direction
h_sp = move * move_sp;
v_sp = v_sp + grv_sp;

//If plaayer is crouching or not
if(key_down) crouch = true;
if(key_down_released) crouch = false;
if(key_down) h_sp = h_sp*.5;

//if key_up is pressed while we are touching the ground -- jump
if(place_meeting(x, y + 1, obj_wall) && (key_up)){
	audio_play_sound(snd_jump,global.sfx_priority,false);
	v_sp = -1*jump_sp;
}

//same as normal jumping, but also holding down to jump higher -- super jump
if(place_meeting(x, y + 1, obj_wall) && (key_up) && (key_down)){
	audio_play_sound(snd_jump,global.sfx_priority,false);
	v_sp = -1*super_jump_sp;
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
	sprite_index = spr_player_air_body;		//change to air sprite
	image_speed = 0;					//just the first frame
	
	obj_player_arms.sprite_index = spr_player_empty_air_arms;		//same for arms
	obj_player_arms.image_speed = 0;
	
	//Rising vs Falling on the jump
	if(sign(v_sp) > 0) image_index = 1; else image_index = 0;
	if(sign(v_sp) > 0) obj_player_arms.image_index = 1; else obj_player_arms.image_index = 0;
}
else if(!crouch){																	//Touching The Ground
	if(h_sp != 0 && obj_player_arms.equip == "empty"){						//Standing Moving Empty
		sprite_index = spr_player_move_body;
		
		obj_player_arms.image_speed = 1;
		obj_player_arms.sprite_index = spr_player_move_empty_arms;
	}
	else{																	//Standing Still Empty
		sprite_index = spr_player_still_body;
		
		obj_player_arms.image_speed = 0;
		obj_player_arms.sprite_index = spr_player_still_empty_arms;
	}
	

	if(h_sp != 0 && obj_player_arms.equip == "slingshot"){					//Standing Moving Slingshot
		sprite_index = spr_player_move_body;
		
		obj_player_arms.image_speed = 1;
		obj_player_arms.sprite_index = spr_player_slingshot_arms;
	}
	else{																	//Standing Still Slingshot
		sprite_index = spr_player_still_body;
		
		obj_player_arms.image_speed = 0;
		obj_player_arms.sprite_index = spr_player_slingshot_arms;
	}
}
else{
	image_speed = 1;
	if(h_sp != 0 && obj_player_arms.equip == "empty"){
		sprite_index = spr_player_crouch_move_empty_body;					//Crouching Moving Empty
		
		obj_player_arms.image_speed = 1;
		obj_player_arms.sprite_index = spr_player_crouch_move_arms;
	}
	else{																	//Crouching Still Empty
		sprite_index = spr_player_crouch_still_empty_body;
		
		obj_player_arms.image_speed = 0;
		obj_player_arms.sprite_index = spr_player_crouch_still_arms;
	}
	
	
	if(h_sp != 0 && obj_player_arms.equip == "slingshot"){
		sprite_index = spr_player_crouch_move_slingshot_body;				//Crouching Moving Slingshot
		
		obj_player_arms.image_speed = 1;
		obj_player_arms.sprite_index = spr_player_crouch_move_arms;
	}
	else{																	//Crouching Still Slingshot
		sprite_index = spr_player_crouch_still_slingshot_body;
		
		obj_player_arms.image_speed = 0;
		obj_player_arms.sprite_index = spr_player_crouch_still_arms;
	}
}
//Face the correct direction using scale to flip
if(h_sp != 0) image_xscale = sign(h_sp);
