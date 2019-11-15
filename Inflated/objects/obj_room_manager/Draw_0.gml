/// @description Draw GUI and or title etc per screen
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
switch(room){
	case rm_title_screen:	//if on title screen
		draw_text_color(room_width/2, room_height/2, "INFLATED", c_white, c_white, c_white, c_white, 1);
		draw_text_color(room_width/2, room_height/2 + 128, "PRESS THE SPACEBAR TO PLAY!", c_white, c_white, c_white, c_white, 1);
		draw_text_color(room_width-128, room_height-64, "by Kawaiivee", c_white, c_white, c_white, c_white, 1);	
		break;
	case rm_level_select:	//if on level select room
		draw_set_halign(fa_left);
		if(global.levels_unlocked >= 1){
			draw_text_color(20, 20, "Buppy (Balloon Puppy) Controls:", c_white, c_white, c_white, c_white, 1);
			draw_text_color(20, 40, "W or ^ = Jump", c_white, c_white, c_white, c_white, 1);
			draw_text_color(20, 60, "A or < = Left", c_white, c_white, c_white, c_white, 1);
			draw_text_color(20, 80, "D or > = Right", c_white, c_white, c_white, c_white, 1);
			draw_text_color(20, 100, "ESC or P = Pause", c_white, c_white, c_white, c_white, 1);
			draw_text_color(20, 120, "Make sure you always have air!", c_white, c_white, c_white, c_white, 1);
		}
		break;
	default:
		break;
}