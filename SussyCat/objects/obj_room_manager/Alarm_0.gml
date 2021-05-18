global.last_score = global.curr_score;
if(global.last_score > global.high_score){
	global.high_score = global.last_score;
}
global.curr_score = 0;
room_goto(rm_start);