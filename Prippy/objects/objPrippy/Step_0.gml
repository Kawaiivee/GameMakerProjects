/// @description Prippy

//Controls
randomize();
//trippy controls
cheese_acquired = true;
if(cheese_acquired){
	
	//shuffle function
	var temp_0;
	var temp_1;
	var swapPos;
	var i = 0;
	while(i < 3){
		swapPos = irandom_range(i+1, array_length_1d(temp_controls_arr)-1);
		
		temp_0 = temp_controls_arr[i,0];
		temp_1 = temp_controls_arr[i,1];
		
		temp_controls_arr[i, 0] = temp_controls_arr[swapPos, 0];
		temp_controls_arr[i, 1] = temp_controls_arr[swapPos, 1];
		
		temp_controls_arr[swapPos, 0] = temp_0;
		temp_controls_arr[swapPos, 1] = temp_1;
		i++;
	}
	
	key_left = keyboard_check_pressed(temp_controls_arr[0,0]) || keyboard_check_pressed(temp_controls_arr[0,1]);
	key_right = keyboard_check_pressed(temp_controls_arr[1,0]) || keyboard_check_pressed(temp_controls_arr[1,1]);
	key_up = keyboard_check_pressed(temp_controls_arr[2,0]) || keyboard_check_pressed(temp_controls_arr[2,1]);
	key_down = keyboard_check_pressed(temp_controls_arr[3,0]) ||  keyboard_check_pressed(temp_controls_arr[3,1]);

}

//normal controls - pre-cheese
else{
	key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	key_down = keyboard_check_pressed(vk_down) ||  keyboard_check_pressed(ord("S"));
	
}

spd = 32;

//Collision with wall code
//wall left
if(place_meeting(x-32, y, objWall) && key_left){
	spd = 0;
}

//wall right
if(place_meeting(x+32, y, objWall) && key_right){
	spd = 0;
}

//wall up
if(place_meeting(x, y-32, objWall) && key_up){
	spd = 0;
}

//wall down
if(place_meeting(x, y+32, objWall) && key_down){
	spd = 0;
}

//move prippy's xy position
if(key_right-key_left != 0 and key_down-key_up !=0){
	exit;
}

x = x + (key_right-key_left)*spd
y = y + (key_down-key_up)*spd
