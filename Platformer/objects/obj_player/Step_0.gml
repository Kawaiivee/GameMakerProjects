//Keyboard check setting up

//These return 1 or 0, so you can use them mathematically to determine movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);



//calculate if we moved left or right and/or jumped
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x, y + 1, obj_wall) && (key_jump)){		//if we are touching the ground -- then we have acceess to jump
	vsp = -10;												//negativve because negative y is up (to jump)
}

//check if collision o.o? Why are we not using the colliding evvent? idk yet
if(place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x = x + sign(hsp);	
	}
	hsp = 0;							//hitting a wall
}

//ACTUALLY change the x position of the player object
//this is what is movved after all is said and done for hsp
x = x + hsp;

//----------------------------
//SAME FOR VERTICAL COLLISIONS

//check if collision o.o? Why are we not using the colliding evvent? idk yet
if(place_meeting(x, y + vsp, obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y = y + sign(vsp);	
	}
	vsp = 0;							//hitting a wall
}

//ACTUALLY change the x position of the player object
//this is what is movved after all is said and done for hsp
y = y + vsp;