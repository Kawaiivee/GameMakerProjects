/// @description
if(alarm_0_flag){
	alarm[0] = .25*room_speed;
	alarm_0_flag = false;
}

if(alarm_1_flag){
	alarm[1] = .3*room_speed;
	alarm_1_flag = false;
}

if(alarm_2_flag){
	alarm[2] = .5*room_speed;
	alarm_2_flag = false;
}