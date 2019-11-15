/// @description Create Level Select Buttons
var _width = 192;
var _height = 128;

if(global.levels_unlocked >= 1){
	create_button((room_width*4/8)*2/3, 40 + 0*(_height + 40), _width, _height, "Level 1: Space", on_click);
	create_button(room_width - (40 + 2*_width), 40, 2*_width, _height/3, "Too Hard? Unlock All Levels", on_click);
}

if(global.levels_unlocked >= 2){
	create_button((room_width*5/8)*2/3, 40 + 1*(_height + 40), _width, _height, "Level 2: Clouds", on_click);
}

if(global.levels_unlocked >= 3){
	create_button((room_width*6/8)*2/3, 40 + 2*(_height + 40), _width, _height, "Level 3: Earth", on_click);
}

if(global.levels_unlocked >= 4){
	create_button((room_width*7/8)*2/3, 40 + 3*(_height + 40), _width, _height, "Epilogue", on_click);
}

create_button(40, room_height - 64*3, _width*8/10, _height/3, "Intro", on_click);

create_button(40, room_height - 64*2, _width*8/10, _height/3, "To Title Screen", on_click);

create_button(40, room_height - 64*1, _width*8/10, _height/3, "Toggle Music", on_click);