/// @description
switch(room){
	case rm_title_screen:
	case rm_menu:
		if(audio_flag){
			audio_stop_all();
			audio_flag = false;
		}
		if(!audio_is_playing(snd_title_screen)){
			audio_play_sound(snd_title_screen, 1, true);
		}
		break;
	case rm_game:
		if(audio_flag){
			audio_stop_all();
			audio_flag = false;
		}
		if(!audio_is_playing(snd_game)){
			audio_play_sound(snd_game, 1, true);
		}
		break;
	case rm_boss:
		if(audio_flag){
			audio_stop_all();
			audio_flag = false;
		}
		if(!audio_is_playing(snd_boss)){
			audio_play_sound(snd_boss, 1, true);
		}
		break;
	case rm_win:
		if(audio_flag){
			audio_stop_all();
			audio_flag = false;
		}
		if(!audio_is_playing(snd_title_screen)){
			audio_play_sound(snd_title_screen, 1, true);
		}
		break;
	default:
		break;
}