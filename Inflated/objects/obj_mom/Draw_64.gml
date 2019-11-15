/// @description Left, Right, Space
if(room == rm_level_intro){
	if(obj_table.candle_on){
		draw_text(x, y - 96,"Mom: Happy Birfdei! (Press <Space> to blow out the candle!)");
	}
	else{
		draw_text(x, y - 96,"(Press <ESC> to continue...)");
	}
}

if(room == rm_level_epilogue){
	if(obj_table.candle_on){
		draw_text(x, y - 96,"Mom: Happy Birfdei! (Press <Space> to blow out the candle!)");
	}
	else{
		draw_text(x, y - 96, "(Press <ESC> to continue...)");
		draw_text(x, y - 64, "(Did you find all the easter eggs?)");
	}
}