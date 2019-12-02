/// @description Insert description here
// You can write your code in this editor

//make sure enemy stays on sscreen like player
if(alarm_0_flag){
	alarm[0] = 0.5*room_speed*irandom_range(1,4);
	alarm_0_flag = false;
}

if(alarm_1_flag){
	alarm[1] = 0.5*room_speed*irandom_range(1,4);
	alarm_1_flag = false;
}

x = x + x_rand;
y = y + y_rand;

if(x < 0 - sprite_width){
	
	instance_destroy();
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