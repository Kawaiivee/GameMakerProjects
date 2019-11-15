/// @description Make camera pan smoothly
if(still_panning){
	x += (x_to - x)/zoom_speed;
	y += (y_to - y)/zoom_speed;
}
else{
	x += (x_to - x)/40;
	y += (y_to - y)/20;
}
//assuming camera is not following anything -- assign it to what follow is ???for when target is off screen?
if(target != noone){
	x_to = target.x;
	y_to = target.y;
}

x = clamp(x, view_width_half, room_width-view_width_half);
y = clamp(y, view_height_half, room_height-view_height_half);

//set new view matrix (pans around)
var view_matrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, view_matrix);
