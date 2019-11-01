/// @description Prippy -- Init controls
/// @description Control Mapping
default_controls_arr = [
	[vk_left, ord("A")],
	[vk_right, ord("D")],
	[vk_up, ord("W")],
	[vk_down, ord("S")]];

//This is hacky asf
temp_controls_arr[3, 1] = "InitSizeSoWeGMSDoesn'tDynamicallyRecreateTheArray";	//This variable gets changed to be down control

temp_controls_arr[0, 0] = vk_left;
temp_controls_arr[1, 0] = vk_right;
temp_controls_arr[2, 0] = vk_up;
temp_controls_arr[3, 0] = vk_down;
temp_controls_arr[0, 1] = ord("A");
temp_controls_arr[1, 1] = ord("D");
temp_controls_arr[2, 1] = ord("W");
temp_controls_arr[3, 1] = ord("S");

//Initially not tripping on cheese
cheese_acquired = false;

//speed var -- must be grid cell size or multiple to stay in square
spd = 32;

//Initially idle
idle = true;

//Create Hud Instances --LRUD
instance_create_layer(x-64, y, "Hud", objDirHudLeft);
instance_create_layer(x+64, y, "Hud", objDirHudRight);
instance_create_layer(x, y-64, "Hud", objDirHudUp);
instance_create_layer(x, y+64, "Hud", objDirHudDown);