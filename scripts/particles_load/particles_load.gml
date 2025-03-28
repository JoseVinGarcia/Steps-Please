function particles(){
	psys = part_system_create();
	em = part_emitter_create(psys);
	part_system_draw_order(psys, true);

	//Confetti
	ptConfetti = part_type_create();
	part_type_sprite(ptConfetti, sConfetti, false, false, true)
	part_type_size(ptConfetti, 1, 1, 0, 0);
	part_type_scale(ptConfetti, 1, 1);
	part_type_speed(ptConfetti, 2, 6, 0, 0);
	part_type_direction(ptConfetti, 45, 0, 0, 0);
	part_type_gravity(ptConfetti, 0.3, 270);
	part_type_orientation(ptConfetti, 0, 360, 5, 1, true);
	part_type_colour3(ptConfetti, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(ptConfetti, 1, 1, 1);
	part_type_blend(ptConfetti, false);
	part_type_life(ptConfetti, 80, 120);

	//Goal Fx
	ptGoal = part_type_create();
	part_type_sprite(ptGoal, sGoalFx, false, false, false)
	part_type_size(ptGoal, 1, 1, 0, 0);
	part_type_scale(ptGoal, 1, 1);
	part_type_speed(ptGoal, 3, 6, -0.5, 0);
	part_type_direction(ptGoal, 0, 360, 0, 0);
	part_type_gravity(ptGoal, 0, 270);
	part_type_orientation(ptGoal, 0, 360, 5, 1, true);
	part_type_colour3(ptGoal, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(ptGoal, 1, 1, 1);
	part_type_blend(ptGoal, false);
	part_type_life(ptGoal, 0, 15);

}