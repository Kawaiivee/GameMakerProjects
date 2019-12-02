/// @description init angle
var rng = irandom_range(0, 1);
if(rng == 0){
	image_angle = irandom_range(150, 210);
	direction = image_angle;
	speed = 5;
}
if(rng == 1){
	image_angle = irandom_range(-30, 30);
	direction = image_angle;
	speed = 5;
}