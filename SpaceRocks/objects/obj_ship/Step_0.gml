//Step event
//Is run X many times for X fps

//INSTANCE VARIABLES EXIST. for example
//image_angle, x, y, sprite_width -> these are all part of a "obj_ship"
//you could also do obj_ship.x for x -> just like object orientation
//it's' like we are in the class of the thing

if(keyboard_check(vk_left)){
	image_angle += 5;
}

if(keyboard_check(vk_right)){
	image_angle -= 5;
}

//motion_add() does some pseudo momentum physics stuff
//takes parameter of image angle (or you can provide an angle for it to be travelling and speed)
if(keyboard_check(vk_up)){
	motion_add(image_angle, .05);
	if(speed > 2){
		speed = 2;
	}
}

if(keyboard_check(vk_down)){
	motion_add(image_angle, -.05){
		if(speed > 2){
			speed = 2;
		}	
	}
}

//use keyboard_check_pressed() so that it checks per press instead of checkingg if it's held
//otherwise, there may be 60 bullet instances created per second
//
//there are also other instance_create methods, but this one specifies that we create it in the same layer
//YOOOOOO, instance_create methods also return the ID  of the instance created
//
//var makes the newly created variable only consume memory for this particular script of code
//!!!!!!!!!!!!!YOOOOOO we can access other object's variables like the bullet we just created
if(keyboard_check_pressed(vk_space)){
	var bullet_inst = instance_create_layer(x,y, "Instances", obj_bullet);
	bullet_inst.direction = image_angle;
}

//built in function for making instance of this object (the ship) wrap around
//sprite_width/2 makes the wrapping show half the ship
move_wrap(true, true, sprite_width/3);