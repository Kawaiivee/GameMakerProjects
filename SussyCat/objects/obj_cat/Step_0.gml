if(alarm_0_flag){
	alarm[0] = 0.5*room_speed*irandom_range(1,4);
	alarm_0_flag = false;
}

while(x_rand == 0){
	x_rand = irandom_range(-3, 3);
}

while(y_rand == 0){
	y_rand = irandom_range(-3, 3);
}

x = x + x_rand;
y = y + y_rand;

if(x < 0 - sprite_width){
	x = global.game_border - .5*sprite_width;
}

if(x > global.game_border - .5*sprite_width){
	x = 0 + .5*sprite_width;
}

if(y < 0 + .15*sprite_height){
	y = global.game_border - .3*sprite_height;
}

if(y > global.game_border - .15*sprite_height){
	y = 0 + .3*sprite_height;
}

if(
	(mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) &&
	mouse_x < x + sprite_width + global.thresh &&
	mouse_x > x - global.thresh &&
	mouse_y < y + sprite_height + global.thresh &&
	mouse_y > y - global.thresh
)
{
	if(target) {
		global.curr_score += 1;
	}
	instance_destroy();
}