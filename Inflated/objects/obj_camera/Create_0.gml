/// @description Camera to follow player
camera = camera_create();

//Where camera is in 3d space

//look from z -10 to zero (towards the sccreen)
//last 0,1,0 is to determine which direction iss 'up' y = 1
var view_matrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

//ortho = 2d
//perspective = 3d
var projection_matrix = matrix_build_projection_ortho(1280,720,1,9000);

//assign matrices to camera
camera_set_view_mat(camera, view_matrix);
camera_set_proj_mat(camera, projection_matrix);

//assign camera to viewport? i think
view_camera[0] = camera;

//stuff for following TARGET object
target = obj_player;
x_to = x;
y_to = y;