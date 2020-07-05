/// @description Interval At Which To Spawn Stars
repeat(8){
	instance_create_layer(x, y, "Stars", obj_star);
}
alarm_0_flag = true;