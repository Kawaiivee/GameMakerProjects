randomize();
rng = irandom_range(0, global.num_cats);
if(rng == global.sus_index){
	instance_destroy();
}
x_rand = irandom_range(-3, 3);
y_rand = irandom_range(-3, 3);
alarm_0_flag = true;
alarm_1_flag = true;
target = false;

image_speed = 0;
image_index = rng;
image_xscale = 4;
image_yscale = 4;