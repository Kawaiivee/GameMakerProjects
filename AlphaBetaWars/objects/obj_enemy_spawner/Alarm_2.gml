/// @description timer for enemies to spawn
var y_rand = irandom_range(10, room_height-10);
instance_create_layer(room_width, y_rand, "Instances", obj_enemy);
alarm_2_flag = true;