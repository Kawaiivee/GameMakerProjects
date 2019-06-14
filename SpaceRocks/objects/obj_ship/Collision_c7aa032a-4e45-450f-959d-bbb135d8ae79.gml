//Upon ship colliding with rock
//Easier to check if player collides with rock rather than vice versa
lives -= 1;

//Create debris for dead ship
instance_destroy();

repeat(20){
	instance_create_layer(x,y,"Instances",obj_debris);
}
