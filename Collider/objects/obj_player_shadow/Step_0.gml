move_towards_point(xx, yy, spd);
if(global.difficulty != "easy"){
	var curr_scale = image_xscale;
	if(shrink){
		image_xscale -= .1;
		image_yscale = image_xscale;
	}
	else{
		image_xscale += .025;
		image_yscale = image_xscale;
	}

	if(curr_scale < .1){
		shrink = false;
	}
	if(curr_scale > 1){
		shrink = true;
	}
}
else{
	image_xscale = 1;
	image_yscale = 1;
}