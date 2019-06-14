//spawn the rocks in random places
//create rocks AROUND the borders of the room

var bounds = .25;													//can change bounds to change where rocks spawn
var num_rocks = 8;

if(room = rm_game){
	repeat(num_rocks){													//create this many rocks	
		var randX = choose(
			irandom_range(0, room_width*bounds),						//lower x bounds
			irandom_range(room_width*(1.0-bounds), room_width)			//upper x bounds
		);
	
		var randY = choose(
			irandom_range(0, room_height*bounds),						//lower y bounds (upper part of room)
			irandom_range(room_height*(1-bounds), room_height)			//upper y bounds (lower part of room)
		);
	
		instance_create_layer(randX, randY, "Instances", obj_rock);		//create the rock
	}
	
	alarm[0] = 60;												//every 60 steps (frame) -- spawn a rock via Alarm0
}