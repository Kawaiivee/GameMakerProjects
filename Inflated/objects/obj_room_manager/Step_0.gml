/// @description room navigator, level checkerr, and musicpicckerr -- what a loaded object
switch(room){
	case rm_title_screen:	//if on title screen
		if(!audio_is_playing(snd_inflated_theme) && global.music_on){
			audio_play_sound(snd_inflated_theme, 1, true);
		}
		if(!global.music_on){
			audio_stop_all();
		}
		if(keyboard_check_pressed(vk_space)){
			room_goto(rm_level_select);
		}
		break;
	case rm_level_select:	//if on level select room -- BUTTON GUI TAKES CARE OF ROOM HOPPING HERE
		if(!audio_is_playing(snd_inflated_theme) && global.music_on){
			audio_play_sound(snd_inflated_theme, 1, true);
		}
		if(!global.music_on){
			audio_stop_all();
		}
		break;
	default:
		if(room == rm_level_intro){
			audio_stop_all();
			key_esc = keyboard_check_pressed(vk_escape);
			if(key_esc){
				if(global.levels_unlocked == 0){
					global.levels_unlocked = 1;
				}
				room_goto(rm_level_select);
			}
			break;
		}
		if(room == rm_level_1){				//check current level
			if(!audio_is_playing(snd_level_1) && global.music_on){
				audio_play_sound(snd_level_1, 1, true);
			}
			if(obj_goal.goal_reached){				//check if goal reached
				if(global.levels_unlocked == 1){		//unlock 'next' level
					global.levels_unlocked = 2;
				}
				room_goto(rm_level_select);
			}
			break;
		}
		if(room == rm_level_2){				//check current level
			if(!audio_is_playing(snd_level_2) && global.music_on){
				audio_play_sound(snd_level_2, 1, true);
			}
			if(obj_goal.goal_reached){				//check if goal reached
				if(global.levels_unlocked == 2){		//unlock 'next' level
					global.levels_unlocked = 3;
				}
				room_goto(rm_level_select);
			}
			break;
		}
		if(room == rm_level_3){				//check current level
			if(!audio_is_playing(snd_level_3) && global.music_on){
				audio_play_sound(snd_level_3, 1, true);
			}
			if(obj_goal.goal_reached){				//check if goal reached
				if(global.levels_unlocked == 3){		//unlock 'next' level
					global.levels_unlocked = 4;	//for now it is hard coded, but 4 is done!
				}
				room_goto(rm_level_select);
			}
			break;
		}
		if(room == rm_level_epilogue){
			audio_stop_all();
			key_esc = keyboard_check_pressed(vk_escape);
			if(key_esc){
				if(global.levels_unlocked == 4){
					global.levels_unlocked = 5;
				}
				room_goto(rm_level_select);
			}
			break;
		}
		break;
}
if(audio_flag){
	audio_stop_all();
	audio_flag = false;
}