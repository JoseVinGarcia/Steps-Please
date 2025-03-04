/// @description Draw Title
draw_set_text(c_white,fTitle,fa_center,fa_middle);
var title = "STEPS,\nPLEASE";

// draw title
draw_text_ext_transformed(display_get_gui_width()/2, display_get_gui_height()/3, title, string_height(title)/2, string_width(title), 3, 3, image_angle);

// draw space button
draw_sprite_ext(sButton, 0, display_get_gui_width()/2, display_get_gui_height()-64, 2, 2, image_angle, image_blend, spacetransp);
