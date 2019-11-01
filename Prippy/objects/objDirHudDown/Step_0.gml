/// @description DIR HUD DOWN
if(objPrippy.temp_controls_arr[3, 0] == vk_left){
	image_index = 0;
}
if(objPrippy.temp_controls_arr[3, 0] == vk_right){
	image_index = 1;
}
if(objPrippy.temp_controls_arr[3, 0] == vk_up){
	image_index = 2;
}
if(objPrippy.temp_controls_arr[3, 0] == vk_down){
	image_index = 3;
}

x = objPrippy.x;
y = objPrippy.y + 48;