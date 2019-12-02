/// @description
switch(room){
	case rm_title_screen:
		if(keyboard_check_pressed(vk_enter)){
			room_goto(rm_menu);
		}
		break;
	case rm_menu:
		if(keyboard_check_pressed(ord("1"))){
			obj_audio_manager.audio_flag = true;
			global.points = 0;
			global.stocks = 3;
			global.boss_hp = 100;
			room_goto(rm_game);
		}
		if(keyboard_check_pressed(ord("2"))){
			obj_audio_manager.audio_flag = true;
			global.points = 0;
			global.stocks = 5;
			global.boss_hp = 100;
			room_goto(rm_boss);
		}
		break;
	case rm_game:
		if(keyboard_check_pressed(vk_enter)){
			obj_audio_manager.audio_flag = true;
			room_goto(rm_menu);
		}
		break;
	case rm_boss:
		if(keyboard_check_pressed(vk_enter)){
			obj_audio_manager.audio_flag = true;
			room_goto(rm_menu);
		}
		break;
	case rm_win:
		if(keyboard_check_pressed(vk_enter)){
			game_restart();
		}
	default:
		break;
}