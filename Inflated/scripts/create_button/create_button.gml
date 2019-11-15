//args create_button(x,y,width,height,text,script);

//args
var _x = argument[0];
var _y = argument[1];
var _width = argument[2];
var _height = argument[3];
var _text = argument[4];
var _script = argument[5];

//acctually make button instance on GUI layer
var _button = instance_create_layer(_x, _y, "Gui_Layer", obj_gui_btn);

//Set values -- could also do this by calling variables in button like obj_gui_btn.<val>, but this is easier to setw
with(_button){
	width = _width;
	height = _height;
	text = _text;
	script = _script;
}

return _button;