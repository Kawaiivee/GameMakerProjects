switch(room){
	case rm_start:
		draw_text(room_width/2 - 128, room_height/2, "Sussy Cats");
		draw_text(room_width/2 - 128, room_height/2 + 32, "Press SPACE To Play! (Just click the sus cat!)");
		draw_text(room_width/2 - 128, room_height/2 + 64, "High Score: " + string(global.high_score));
		draw_text(room_width/2 - 128, room_height/2 + 96, "Last Score: " + string(global.last_score));
		break;
		
	case rm_game:
		draw_text(room_width - (room_width - global.game_border)/2, room_height/2, "Score: " + string(global.curr_score));
		draw_text(room_width - (room_width - global.game_border)/2, room_height/2 + 32, "Time: " + string(alarm[0]/60));
		break;
	
	default:
		break;
}