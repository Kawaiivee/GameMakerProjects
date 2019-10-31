/// @description Grid
mp_grid_draw(houseGrid);

//Makes grid visible
if(objDebug.visual_debug){
	draw_set_alpha(.2);
}

//Makes grid invisible
else{
	draw_set_alpha(1);
}