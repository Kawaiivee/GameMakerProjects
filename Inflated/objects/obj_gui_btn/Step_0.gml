/// @description get hover constantly
var m_hover = get_mouse_hover();
var m_click = m_hover && mouse_check_button_pressed(mb_any);

//change the hover value to be 1 or 0
hover = lerp(hover, m_hover, 0.1);

//button raises effect a bit
y = lerp(y, ystart - m_hover * 8, 0.1);

//Clicked the buutton
if(m_click && script >= 0){
	script_execute(script);
}