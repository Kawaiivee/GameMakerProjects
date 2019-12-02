/// @description
if(alarm_0_flag){
	alarm[0] = room_speed*irandom_range(4,5);
	alarm_0_flag = false;
}

if(alarm_1_flag){
	alarm[1] = room_speed*irandom_range(5,6);
	alarm_1_flag = false;
}

if(alarm_2_flag){
	alarm[2] = room_speed*irandom_range(6,7);
	alarm_2_flag = false;
}