/// @description create water instance vectored
image_angle = point_direction(x,y,mouse_x,mouse_y);

if(alarm_0_flag){
	alarm[0] = .03*room_speed;
	alarm_0_flag = false;
}

if(/*mouse_check_button(mb_left) &&*/ can_fire){
	with(instance_create_layer(x, y, "Instances", obj_water)){
		speed = irandom_range(10,16);
		gravity = 1/irandom_range(15,20);
		direction = other.image_angle;
		image_angle = direction;
	}
	can_fire = false;
}