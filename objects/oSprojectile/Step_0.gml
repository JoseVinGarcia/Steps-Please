/// @description Rise and follow player

if (rising) {
	image_xscale = approach(image_xscale, 1, fracion);
	image_yscale = approach(image_yscale, 1, fracion);
	if image_xscale = 1 {
		rising = false;
		sound_play(sndAttack,1,false,true);
	}
} else {
	speed = movesp;
	direction = dir;
	part_particles_create(oGame.psys,x,y,oGame.ptLaser,4);
}

// Destroying
if place_meeting(x, y, oSolid) instance_destroy();
part_particles_create(oGame.psys,x,y,oGame.ptLaser,16);
