randomize();
rng = irandom_range(0, global.num_cats);
global.sus_index = rng;
x_rand = irandom_range(-3, 3);
y_rand = irandom_range(-3, 3);
target = false;

alarm_0_flag = true;
alarm_1_flag = true;

image_alpha = 0;
depth = -9000;
image_speed = 0;
image_index = rng;
image_xscale = 4;
image_yscale = 4;