//here we step to wait to see if 'ENTER' is pushed to start actual game
if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);			//are we in the start?
			break;
		
		case rm_gameover:				//was gameover or win triggered?
		case rm_win:
			game_restart();
			break;
	}
}

if(room == rm_game){					//make sure you are only checking livves and score in the game room
	if(score >= 100){					//otherwise, you may be in an inf loop by checking for score in other rooms
		room_goto(rm_win);	
	}
	if(lives <= 0){
		room_goto(rm_gameover);
	}
}