/// @description Controls timer and etc.
var jump = keyboard_check(vk_space);

if (timeractive) {
	timer += 1;
} else if (cantimer) {
	if (jump) timeractive = true;
}
