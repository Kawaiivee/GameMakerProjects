key_dash = keyboard_check_pressed(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(ord("W"));

v_spd = v_spd + grv_spd;

if(key_jump && on_ground){
	v_spd = -jump_spd;
	on_ground = false;
}

if (!on_ground && !key_jump_held){
	v_spd = max(v_spd, -jump_spd/3);
}

//v_spd calc
if(grv_spd > jump_spd/4){
	grv_spd = -1*jump_spd/4;
}


//Check walls above and below
if(place_meeting(x, y+v_spd, obj_grass)){
	while(!place_meeting(x, y+sign(v_spd), obj_grass)){
		y = y + sign(v_spd);
	}
	v_spd = 0;
	on_ground = true;
}

//Move y pos
y = y + v_spd;

if(!on_ground){
	sprite_index = spr_eevee_air;
}
else{
	sprite_index = spr_eevee_ground
}