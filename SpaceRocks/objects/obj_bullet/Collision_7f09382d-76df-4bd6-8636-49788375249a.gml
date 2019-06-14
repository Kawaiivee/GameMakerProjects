//Upon bullet hitting

//increment score -- score is a global var
score = score + 1;

//Destroy the bullet instance
instance_destroy();

//We can't use obj_rock.variable to access the rock's variables/methods because we may
//access every instance of a rock by accident
//use keyword 'other'
//other is like the opposite of 'this'
//since there is a bullet instance which is what this script is knowingly/statically referring to, then
//we use 'other' to reference the other PARTICULAR instance of the collision e.g. the rock the bullet collided with

with(other){
	instance_destroy();
	
	//let's check what kind of asteroid
	if(sprite_index == spr_rock_large){
		score += 5															//hit large +5 points
		//repeat does this twice....broken forloop!
		repeat(2){
			var rock_inst = instance_create_layer(x,y,"Instances",obj_rock);
			rock_inst.sprite_index = spr_rock_medium;
		}
	}
	else if(sprite_index == spr_rock_medium){
		score += 3															//hit medium += 3 points
		repeat(2){
			var rock_inst = instance_create_layer(x,y,"Instances",obj_rock);
			rock_inst.sprite_index = spr_rock_small;
		}
	}
	else if(sprite_index == spr_rock_small){
		score += 1;															//hit small += 1 point
	}
	//Create debris for any rock
	repeat(12){
		instance_create_layer(x,y,"Instances",obj_debris);
	}
}