/// @description Air hud
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(x, y-64, "Air: " + string(obj_player.air));
draw_set_color(c_white);