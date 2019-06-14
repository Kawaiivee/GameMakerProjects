//Create runs once

//here we will have a sprite index attribute
//(this attribute exists like image_angle for the object) that is
//chosen to be 1, 2, or 3

sprite_index = choose(
	spr_rock_large,
	spr_rock_medium,
	spr_rock_small
);

//direction is different from image angle
direction = irandom_range(0, 359);

//image angle attribute
image_angle = irandom_range(0, 359);

//speed at which rocks move
speed = 1;