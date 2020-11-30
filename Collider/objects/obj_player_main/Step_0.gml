var curr_scale = image_xscale;
x = mouse_x;
y = mouse_y;
if(global.difficulty != "easy"){
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
if(global.stocks > 0){
	global.points++;
}