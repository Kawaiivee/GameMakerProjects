/// @description Left, Right, Space
if(room == rm_level_intro){
	if(obj_table.candle_on){
		draw_text(x, y - 80,"You: Birthday Boy!");
	}
	else{
		draw_text(x, y - 80,"NOOOOOOOO!!!!! MY BALLOON PUPPY!!!! RIP!");
	}
}
if(room == rm_level_epilogue){
	if(obj_table.candle_on){
		draw_text(x, y - 80,"You: *1 year later...");
	}
	else{
		draw_text(x, y - 80,"BUPPY, THE BALLOON PUPPY IS BACK! THE END!");
	}
}