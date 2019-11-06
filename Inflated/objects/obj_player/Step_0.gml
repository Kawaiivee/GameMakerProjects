/// @description Player Controls
// You can write your code in this editor
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_down = keyboard_check_pressed(vk_down) ||  keyboard_check_pressed(ord("S"));
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

var move = key_right - key_left;

h_spd = move * move_spd;
v_spd = v_spd + grv_spd;

if(key_up){
	v_spd = -1*jump_spd;
}

x = x + h_spd;
y = y + v_spd;

if(h_spd != 0) image_xscale = sign(h_spd);