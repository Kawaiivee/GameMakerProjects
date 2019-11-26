/// @description Insert description here
// You can write your code in this editor

//make sure enemy stays on sscreen like player
x = x + irandom_range(-4, -1);
y = y + irandom_range(-4, 4);

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