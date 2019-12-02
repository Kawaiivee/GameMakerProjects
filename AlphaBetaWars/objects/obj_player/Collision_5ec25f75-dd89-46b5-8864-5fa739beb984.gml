/// @description Destroy and debris
instance_destroy();

repeat(20){
	instance_create_layer(x, y, "Instances", obj_player_debris);
}