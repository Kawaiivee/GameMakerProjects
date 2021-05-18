switch(room){
	case rm_start:
		if(keyboard_check_pressed(vk_space)){
			global.curr_score = 0;
			alarm_0_flag = true;
			alarm[0] = 30 *room_speed;
			room_goto(rm_game);
		}
		break;
		
	case rm_game:
		if(keyboard_check_pressed(vk_space)){
			global.curr_score = 0;
			room_goto(rm_start);
		}
		break;
	
	default:
		break;
}