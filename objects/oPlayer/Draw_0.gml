/// @description Draw self and debug text
draw_self();

if (global.debug) {
	draw_set_text(c_white, fHud, fa_center, fa_middle);
	draw_text(x, y - 32,"Hp: " + string(hp));
	draw_text(x, y - 48,"Horizontal Speed: " + string(hsp));
	draw_text(x, y - 64,"Direction: " + string(dir));
	draw_text(x, y - 80,"Vertical Speed: " + string(vsp));
}
