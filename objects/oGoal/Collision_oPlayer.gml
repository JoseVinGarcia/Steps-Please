/// @description Ends current level
if (other.canmove) {
	with (other) {
		part_particles_create(oGame.psys,x,y,oGame.ptDeathR,3);
		part_particles_create(oGame.psys,x,y,oGame.ptDeathL,3);
		instance_destroy();
	}
	with (oGame) {
		cantimer = false;
		timeractive = false;
	}
	with (oShipB) {
		repeat(16) {
			part_particles_create(oGame.psys, random_range(x - 16, x + 16), random_range(y - 4, y + 4), oGame.ptConfetti, 1);
		}
	}
	smalling = true;
	oCamera.active = false;
	alarm[0] = 180;
}
part_particles_create(oGame.psys,x + (sprite_width / 2), y, oGame.ptGoal,16);