/// @description Draw Title
draw_set_text(c_black,fTitle,fa_center,fa_middle);
var title = "STEPS,\nPLEASE";
var scale = 1;

// draw title
draw_text_ext_transformed(display_get_gui_width()/2+1, display_get_gui_height()/3+1, title, string_height(title)/2, string_width(title), scale, scale, image_angle);
draw_set_color(c_white);
draw_text_ext_transformed(display_get_gui_width()/2, display_get_gui_height()/3, title, string_height(title)/2, string_width(title), scale, scale, image_angle);

// draw space button
draw_sprite_ext(sprite_index, image_index, display_get_gui_width()/2, display_get_gui_height()-64, 2, 2, image_angle, image_blend, spacetransp);
