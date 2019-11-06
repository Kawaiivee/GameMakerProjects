/// @description 1-9 id value
// Cheat and do this sort of on a call stack from alarm[0] on first frame
alarm[0] = 1;

/*image_speed = 0;
tile_id = 0;
var adj = 64;

//check what tiles are around me (2,4,6,8 on keypad)
tile_above = place_meeting(x, y-adj, obj_grass_tile);
tile_below = place_meeting(x, y+adj, obj_grass_tile);
tile_left = place_meeting(x-adj, y, obj_grass_tile);
tile_right = place_meeting(x+adj, y, obj_grass_tile);

if(tile_above && tile_below && tile_left && tile_right){
	tile_id = 5;
	exit;
}

//Check left and right
else{
	if(tile_left && !tile_right){
		tile_id -= 1;
	}
	if(!tile_left && tile_right){
		tile_id += 1;
	}
}

//Check up and down
if(tile_above && !tile_below){
	tile_id -= 3;
}
if(!tile_above && tile_below){
	tile_id +=3;
}

image_index = tile_id;*/