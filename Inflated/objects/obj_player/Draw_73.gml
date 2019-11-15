/// @description Air hud
//draw_text(obj_player.x, obj_player.y - 42, "Air: " + string(air)); //exact air
draw_set_color(c_white);
draw_healthbar(x-32, y - 32, x + 32, y - 40, air, c_red, c_red, c_green, 0, false, true);