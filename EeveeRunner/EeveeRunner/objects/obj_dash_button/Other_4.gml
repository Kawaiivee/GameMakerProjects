my_key = virtual_key_add(
	self.bbox_left,
	self.bbox_top,
	self.bbox_right - self.bbox_left,
	self.bbox_bottom - self.bbox_top,
	ord("D")
)

//sprite based
//my_key = virtual_key_add(
//	x,
//	y,
//	sprite_get_width(sprite_index),
//	sprite_get_height(sprite_index)
//)