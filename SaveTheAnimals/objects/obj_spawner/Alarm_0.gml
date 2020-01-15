/// @description

for(var i = 0; i < irandom_range(5, 10); i++){
	instance_create_layer(irandom_range(64, room_width-64), irandom_range(0, 10), "Instances", obj_fire);
}
alarm_0_flag = true;