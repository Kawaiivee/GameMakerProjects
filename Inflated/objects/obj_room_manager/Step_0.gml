/// @description
curr_room = room;

switch(curr_room){
	case rm_title_screen:	//if on title screen
		break;
	case rm_level_select:	//if on level select room
		break;
	default:
		if(curr_room == rm_level_1){				//check current level
			if(obj_goal.goal_reached){				//check if goal reached
				if(global.levels_unlocked == 1){		//unlock 'next' level
					global.levels_unlocked == 2;
				}
				room_goto();
			}
			else{
			
			}
		}
		break;
}