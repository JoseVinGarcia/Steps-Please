/// @description Ends current level
if (other.canmove) {
	with (other) {
		instance_destroy();
	}
	with (oGame) {
		timeractive = false;
	}
	oCamera.active = false;
	alarm[0] = 120;
}