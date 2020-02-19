/// @description Checking if gui open
if(keyboard_check_pressed(ord("P"))||keyboard_check_pressed(vk_escape)){
	menu_open = !menu_open;
}
	
if(menu_open){
	event_user(0);
}
else{
	event_user(1);
}