//Here we will make the asteroids spin whlilst moving (just spin every frame)
spin = choose(1,2);

if(spin == 1){
	image_angle += 1;	
}

if(spin == 2){
	image_angle += -1;
}

//built in function for making instance of this object (asteroids) wrap around
//sprite_width/2 makes the wrapping show half the ship
move_wrap(true, true, sprite_width/3);