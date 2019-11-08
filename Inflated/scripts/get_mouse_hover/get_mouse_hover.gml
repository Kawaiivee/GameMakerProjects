//Need to do this since camera moves around and GUI layer doesn't

var m_x = device_mouse_y_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

return point_in_rectangle(m_x, m_y, x, y, x + width, y + height);