//Event triggered on a timer

//first check if this is or is not the game room
if(room != rm_game){
	exit;																//exits the rest of the below code
}


//a rock is spawned every second by the borders

if(choose(0,1) == 0){
	var randX = choose(0, room_width);
	var randY = irandom_range(0, room_height);
}
else{
	var randX = irandom_range(0, room_width);
	var randY = choose(0, room_height);
}

instance_create_layer(randX, randY, "Instances", obj_rock);				//create the rock with specified x and y

//alarm resets itself here
alarm[0] = 4*room_speed;												//same as 4*60 for 60fps