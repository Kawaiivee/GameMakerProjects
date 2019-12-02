/// @description timer for enemies to spawn
var y_rand = irandom_range(10, room_height-10);
instance_create_layer(room_width, y_rand, "Stars", obj_star);
alarm_0_flag = true;