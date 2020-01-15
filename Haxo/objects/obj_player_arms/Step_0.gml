/// @description Init Variables from player body
//can use 'begin step' to make the object lag a bit....like it has weight eg hair, gun, tail, cape

x = obj_player_body.x;
y = obj_player_body.y;

h_sp = obj_player_body.h_sp;
v_sp = obj_player_body.v_sp;
grv_sp = obj_player_body.grv_sp;
move_sp = obj_player_body.move_sp;
jump_sp = obj_player_body.jump_sp;
super_jump_sp = obj_player_body.super_jump_sp;
crouch = obj_player_body.crouch;

key_equip = keyboard_check_released(vk_space) || keyboard_check_released(ord("Q"));

if(key_equip && equip == "empty") equip = "slingshot";
else if(key_equip && equip == "slingshot") equip = "empty";

//If we are standing and slingshot is equipped
if(!crouch && equip == "slingshot"){
	
	//sprite setup for the conditions
	sprite_index = spr_player_slingshot_arms;
	image_index = 0;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	firing_delay -= 1;
	recoil = max(0, recoil - 1);							//keeps recoil above zero
	
	if(mouse_check_button(mb_left) && firing_delay <= 0){	//on mouse click
		image_index = 1;
		recoil = 2;
		firing_delay = 12;
		with(instance_create_layer(x,y+5,"Rock",obj_rock)){
			audio_play_sound(snd_slingshot, global.sfx_priority, false);
			sprite_index = spr_rock;
			image_index = 1;
			speed = 10;										//built in speed var
			direction = other.image_angle;					//original arms object
			image_angle = direction;
		}
	}
	
	//This gives how much the arms/slingshot will move back after shooting
	//based on recoil and slingshot image_angle
	x = x - lengthdir_x(recoil,image_angle);
	y = y - lengthdir_y(recoil,image_angle);
	
	//Get the slingshot to face the right way
	if(image_angle > 90 && image_angle < 270){
		obj_player_arms.image_yscale = -1;
	}
	else{
		obj_player_arms.image_yscale = 1;
	}
}

//If we are crouching and slingshot is equipped
else if(crouch && equip == "slingshot"){
	
	sprite_index = spr_player_crouch_move_arms;
	image_index = 0;
	if(h_sp < 0) image_angle = 180; else image_angle = 0;
	recoil = 0;												//no recoil on crouch shot
	firing_delay -= 1;
	
	if(mouse_check_button(mb_left) && firing_delay <= 0){	//on mouse click
		image_index = 1;
		firing_delay = 12;
		with(instance_create_layer(x,y+5,"Rock",obj_rock)){
			audio_play_sound(snd_slingshot, global.sfx_priority, false);
			sprite_index = spr_rock;
			image_index = 1;
			speed = 10;										//built in speed var
			direction = other.image_angle;
		}
	}
	//no recoil while crouched to prevent clipping
	//but we do need to flip y scale
	image_angle = 0;
	image_yscale = 1;
}

//Our hands are empty or are crouched
else{
	if(!crouch) sprite_index = spr_player_still_empty_arms;
	if(crouch) sprite_index = spr_player_crouch_still_arms;
	image_angle = 0;
	image_yscale = 1;
}