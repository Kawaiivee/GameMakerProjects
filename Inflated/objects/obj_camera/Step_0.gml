/// @description Make camera pan smoothly
x += (x_to - x)/60;
y += (y_to - y)/60;

//assuming camera is not following anything -- assign it to what follow is
if(target != noone){
	x_to = target.x;
	y_to = target.y;
}

//set new view matrix (pans around)
var view_matrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, view_matrix);
