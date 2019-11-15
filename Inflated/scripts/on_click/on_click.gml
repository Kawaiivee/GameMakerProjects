//Text parameter comes from object's text parameter
show_debug_message("Clicking: " + text);
if(text == noone){
	text = "Unexpected";
}

//probably do this better witth an array, switch case, or something more linearly scalable
if(text == "Level 1: Space" && global.levels_unlocked >= 1){
	audio_stop_all();
	room_goto(rm_level_1);
}
if(text == "Level 2: Clouds" && global.levels_unlocked >= 2){
	audio_stop_all();
	room_goto(rm_level_2);
}
if(text == "Level 3: Earth" && global.levels_unlocked >= 3){
	audio_stop_all();
	room_goto(rm_level_3);
}

//Same deal here for playerr GUI pause menu
if(text == "Restart"){
	instance_destroy(obj_gui_btn);
	obj_gui_pause.menu_open = false;
	room_restart();
}

if(text == "Exit"){
	audio_stop_all();
	room_goto(rm_level_select);
}


if(text == "To Title Screen"){
	room_goto(rm_title_screen);
}

if(text == "Toggle Music"){
	global.music_on = !global.music_on;
	room_restart();
}

if(text == "Intro"){
	room_goto(rm_level_intro);
}

if(text == "Epilogue"){
	room_goto(rm_level_epilogue);
}

if(text == "Too Hard? Unlock All Levels"){
	global.levels_unlocked = 5;
	room_restart();
}