/// @description Draw Intro
draw_set_text(c_black,fHud,fa_center,fa_middle);
var scale = 0.5;
var buffer1 = 112;
var buffer2 = 96;

//draw points
draw_text(xx, yy - buffer3 + 1, $"Hits: {oGame.hits}");
draw_set_color(c_white);
draw_text(xx, yy - buffer3, $"Hits: {oGame.hits}");

// draw text 1
draw_set_color(c_black);
draw_set_font(fTitle);
draw_text_ext_transformed(xx+1, yy - buffer1 + 1, text, string_height(text)/2, string_width(text), scale, scale, image_angle);
draw_set_color(c_white);
draw_text_ext_transformed(xx, yy - buffer1, text, string_height(text)/2, string_width(text), scale, scale, image_angle);

// draw text 2
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text_ext_transformed(xx+1, yy - buffer2 + 1, text2, string_height(text2)/4, string_width(text2), scale, scale, image_angle);
draw_set_color(c_white);
draw_text_ext_transformed(xx, yy - buffer2, text2, string_height(text2)/4, string_width(text2), scale, scale, image_angle);
