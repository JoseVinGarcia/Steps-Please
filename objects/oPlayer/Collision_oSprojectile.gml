/// @description Move backwards
var onthefloor = place_meeting(x,y+1,oSolid)

if (canhurt) {
	if (onthefloor) {
		canmove = false;
		hsp -= walksp*2 * dir;
		image_index -= 2;
	} else if (!canmove) {
		hsp -= walksp*2 * dir;
	}
	oGame.hits += 1;
	with (other) {
		part_particles_create(oGame.psys,x,y,oGame.ptLaser,4);
		instance_destroy();
	}
	audio_play_sound(sndDamage,1,false);
}