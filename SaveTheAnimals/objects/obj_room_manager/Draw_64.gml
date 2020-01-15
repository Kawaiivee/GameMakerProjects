draw_set_font(font_candara);

switch(room){
	case rm_start:
		draw_text(room_width/2 - 100, room_height/2, "SAVE THE ANIMALS!");
		draw_text(room_width/2 - 80, room_height/2 + 32, "Cloud Skate Games");
		draw_text(32, room_height-64, "Press <Enter> To Play");
		draw_text(32, room_height-32, "High Score: " + string(global.high_score));
		break;
		
	case rm_game:
		draw_text(32, room_height-32, "Points: " + string(global.points));
		if(global.gameover_msg_flag){
			draw_text(room_width/2-80, room_height/2-32, "Press <Enter> To Restart!");
			draw_text(room_width/2-80, room_height/2-64, "GAME OVER");
		}
		break;
	
	default:
		break;
}