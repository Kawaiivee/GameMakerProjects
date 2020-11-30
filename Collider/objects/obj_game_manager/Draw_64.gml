draw_text(room_width-128, 32, "Points:" + string(global.points));
if(global.stocks < 1){
	draw_text(room_width/2, room_height/2, "'Enter' To Restart");
}