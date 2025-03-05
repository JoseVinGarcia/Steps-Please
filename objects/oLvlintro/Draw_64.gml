/// @description Draw Intro
draw_set_text(c_black,fTitle,fa_center,fa_middle);
var scale = 1;

// draw text
draw_text_ext_transformed(xx+1, yy+1, text, string_height(text)/2, string_width(text), scale, scale, image_angle);
draw_set_color(c_white);
draw_text_ext_transformed(xx, yy, text, string_height(text)/2, string_width(text), scale, scale, image_angle);
