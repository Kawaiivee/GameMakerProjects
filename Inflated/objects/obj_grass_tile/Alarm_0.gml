/// @description Assume tiles have min2 adj
visible = true;
image_speed = 0;
tile_id = 5;
var adj = 32;

//check what tiles are around me (2,4,6,8 on keypad)
tile_above = place_meeting(x, y-adj, obj_grass_tile);
tile_below = place_meeting(x, y+adj, obj_grass_tile);
tile_left = place_meeting(x-adj, y, obj_grass_tile);
tile_right = place_meeting(x+adj, y, obj_grass_tile);

//Fully Surrounded
if(tile_above && tile_below && tile_left && tile_right){
	tile_id = 5;
}

//Check left and right
else{
	if(!tile_left && tile_right){
		tile_id -= 1;
	}
	if(tile_left && !tile_right){
		tile_id += 1;
	}
}

//Check up and down
if(tile_above && !tile_below){
	tile_id += 3;
}
if(!tile_above && tile_below){
	tile_id -=3;
}

//Check 3 open area surrounding cases
if(!tile_above && tile_below && !tile_left && !tile_right){
	tile_id = 10;
}

if(!tile_above && !tile_below && !tile_left && tile_right){
	tile_id = 11;
}

if(!tile_above && !tile_below && tile_left && !tile_right){
	tile_id = 12;
}

if(tile_above && !tile_below && !tile_left && !tile_right){
	tile_id = 13;
}

// Tile to right and left 'bridge'
if(!tile_above && !tile_below && tile_left && tile_right){
	tile_id = 14;
}

// Tile to above and below 'pillar'
if(tile_above && tile_below && !tile_left && !tile_right){
	tile_id = 15;
}

//if literally 1 tile island
if(!tile_above && !tile_below && !tile_left && !tile_right){
	tile_id = 16;
}
image_index = tile_id;