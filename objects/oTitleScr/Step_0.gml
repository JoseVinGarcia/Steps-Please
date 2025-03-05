/// @description Zooms out when pressed
var keypressd = keyboard_check_pressed(vk_space);

// zooms out
if (active) {
	ww = approach(ww, wwmax, fracc*2);
	yy = approach(yy, yymax, fracc);
	// space button
	spaceb = false;
	spacetransp = approach(spacetransp, 0, 0.1);
	// destroys
	if ((ww = wwmax) && (yy = yymax)) {
		instance_destroy();
		camera = instance_create_layer(x, y, "Control", oCamera);
		audio_stop_sound(mscTitle);
		audio_play_sound(mscStages, 2, true);
	}
} else {
	if (keypressd) {
		active = true;
	}
}
camera_set_view_size(view_camera[0], ww, yy);

// draw space button
if (spaceb) spacetransp = approach(spacetransp, 1, 0.1);
