//This event is used to draw text to the screen
switch(room){								//check if we are in the game room to disp lives & score
	case rm_game:
		draw_text(24, 24, "Score: " + string(score));	//concat string and draw at x y
		draw_text(24, 48, "Lives: " + string(lives));
		draw_set_font(fnt_text);
		break;
	
	case rm_start:
	draw_set_halign(fa_center);						//makes it so the stuff we are about to draw appears in center
		var c = c_yellow;
		draw_text_transformed_color(				//a lotta parameters here, the IDE helps show what they are
			room_width/2, 100, "SPACE ROCKS V1",
			3, 3, 0, c, c, c, c, .75
		);
		draw_text(
			room_width/2, 200,						//@makes the string multiline-able
			@"Score 100 points to win!				
			UP: move forward
			DOWN: move backward
			LEFT: turn left
			RIGHT: turn right
			SPACE: shoot
			
			<><> PRESS ENTER TO START! <><>
			"
		);
		draw_set_halign(fa_left);					//re-horizontal-align to adjust it to go left
		break;
		
	case rm_win:
		draw_set_halign(fa_center);						//makes it so the stuff we are about to draw appears in center
		var c = c_fuchsia;
		draw_text_transformed_color(				//a lotta parameters here, the IDE helps show what they are
			room_width/2, 100, "YOU WIN!",
			3, 3, 0, c, c, c, c, .75
		);
		draw_text(
			room_width/2, 224,
			"Score: " + string(score)
		);
		draw_text(
			room_width/2, 200,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);					//re-align to adjust it to go left
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);						//makes it so the stuff we are about to draw appears in center
		var c = c_red;
		draw_text_transformed_color(				//a lotta parameters here, the IDE helps show what they are
			room_width/2, 100, "GAME OVER!",
			3, 3, 0, c, c, c, c, .75
		);
		draw_text(
			room_width/2, 200,
			"PRESS ENTER TO RESTART"
		);
		draw_text(
			room_width/2, 224,
			"Score: " + string(score)
		);
		draw_set_halign(fa_left);					//re-horizontal-align to adjust it to go left
		break;
}