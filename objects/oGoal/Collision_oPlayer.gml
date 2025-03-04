/// @description Ends current level
if (other.canmove) {
	with (other) {
		instance_destroy();
	}
	with (oGame) {
		timeractive = false;
	}
	with (oShipB) {
		//part_particles_create(oGame.psys,x,y,oGame.ptConfetti,1);
	}
	smalling = true;
	oCamera.active = false;
	alarm[0] = 120;
}