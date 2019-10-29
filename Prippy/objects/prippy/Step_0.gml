/// Step

//Controls
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check(vk_down) ||  keyboard_check(ord("S"));
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

//horizontal and vertical speed calcs
h_sp = 0;
v_sp = 0;
spd = 5;

if(key_left){
	h_sp = -1*spd;
}

if(key_right){
	h_sp = spd;
}
if(key_up){
	v_sp = -1*spd;
}

if(key_down){
	v_sp = spd;
}

//move prippy's position
x = x + h_sp
y = y + v_sp