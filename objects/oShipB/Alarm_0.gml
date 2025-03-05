/// @description Throw confetti
if (confetti) {
	repeat(16) {
		part_particles_create(oGame.psys, random_range(x - 16, x + 16), random_range(y - 4, y + 4), oGame.ptConfetti, 1);
	}
	alarm[0] = random_range(60, 120);
}