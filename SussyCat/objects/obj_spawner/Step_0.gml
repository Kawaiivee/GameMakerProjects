x = irandom_range(180,540);
y = irandom_range(180,540);

if(alarm_1_flag){
	alarm[1] = room_speed/10;
	alarm_1_flag = false;
}

if(alarm_2_flag){
	alarm[2] = room_speed/10;
	alarm_2_flag = false;
}