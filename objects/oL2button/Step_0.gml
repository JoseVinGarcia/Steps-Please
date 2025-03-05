/// @description Slowly appears
var walkp = keyboard_check_pressed(vk_space);

if (active) {
	if (rising) image_alpha = approach(image_alpha, 1, 0.1);
} else {
	if (walkp) {
		active = true;
		image_speed = 1;
		alarm[0] = 10;
	}
}
