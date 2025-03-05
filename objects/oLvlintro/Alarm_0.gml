/// @description Stars moving
if (moving) {
	instance_destroy();
} else {
	moving = true;
	alarm[0] = 60;
}
