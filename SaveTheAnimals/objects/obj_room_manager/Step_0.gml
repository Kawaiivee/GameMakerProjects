switch(room){
	case rm_start:
		if(keyboard_check_pressed(vk_enter)){
			global.points = 0;
			global.gameover_msg_flag = false;
			room_goto(rm_game);
		}
		break;
		
	case rm_game:
		if(keyboard_check_pressed(vk_enter)){
			global.points = 0;
			room_goto(rm_start);
		}
		break;
	
	default:
		break;
}