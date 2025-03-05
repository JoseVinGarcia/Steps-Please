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
	oShipB.confetti = false;
	oCamera.active = false;
	alarm[0] = 60;
	audio_stop_sound(mscStages)
	sound_play(sndVictoryFinal, 1, false, true);
}
part_particles_create(oGame.psys,x + (sprite_width / 2), y, oGame.ptGoal,16);
