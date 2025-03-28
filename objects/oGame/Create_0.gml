/// @description Initial variables
global.debug = false;
player = oPlayer;

//HIGH SCORE STUFF
hits = 0;
timer = 0;
timeractive = false;
cantimer = true;

//PARTICLES
psys = part_system_create();
em = part_emitter_create(psys);
part_system_draw_order(psys, true);

//Confetti
ptConfetti = part_type_create();
part_type_sprite(ptConfetti, sConfetti, false, false, true)
part_type_size(ptConfetti, 1, 1, 0, 0);
part_type_scale(ptConfetti, 1, 1);
part_type_speed(ptConfetti, 2, 4, 0, 0);
part_type_direction(ptConfetti, 45, 0, 0, 0);
part_type_gravity(ptConfetti, 0.1, 270);
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

//Laser Dust
ptLaser = part_type_create();
part_type_sprite(ptLaser, sLaserfx, false, false, false)
part_type_size(ptLaser, 1, 1, 0, 0);
part_type_scale(ptLaser, 1, 1);
part_type_speed(ptLaser, 0.5, 1, 0, 0);
part_type_direction(ptLaser, 0, 360, 0, 0);
part_type_gravity(ptLaser, 0, 270);
part_type_orientation(ptLaser, 0, 0, 0, 0, false);
part_type_colour3(ptLaser, $FFFFFF, $FFFFFF, $FFFFFF);
part_type_alpha3(ptLaser, 1, 1, 1);
part_type_blend(ptLaser, false);
part_type_life(ptLaser, 0, 5);

//Death FX Right
ptDeathR = part_type_create();
part_type_sprite(ptDeathR, sDeathfx, false, false, false)
part_type_size(ptDeathR, 1, 1, 0, 0);
part_type_scale(ptDeathR, 1, 1);
part_type_speed(ptDeathR, 1, 2, 0, 0);
part_type_direction(ptDeathR, 0, 0, 0, 0);
part_type_gravity(ptDeathR, 0, 270);
part_type_orientation(ptDeathR, 0, 0, 0, 0, false);
part_type_colour3(ptDeathR, $FFFFFF, $FFFFFF, $FFFFFF);
part_type_alpha3(ptDeathR, 1, 1, 1);
part_type_blend(ptDeathR, false);
part_type_life(ptDeathR, 15, 30);

//Death FX Left
ptDeathL = part_type_create();
part_type_sprite(ptDeathL, sDeathfx, false, false, false)
part_type_size(ptDeathL, 1, 1, 0, 0);
part_type_scale(ptDeathL, 1, 1);
part_type_speed(ptDeathL, 1, 2, 0, 0);
part_type_direction(ptDeathL, 180, 180, 0, 0);
part_type_gravity(ptDeathL, 0, 270);
part_type_orientation(ptDeathL, 0, 0, 0, 0, false);
part_type_colour3(ptDeathL, $FFFFFF, $FFFFFF, $FFFFFF);
part_type_alpha3(ptDeathL, 1, 1, 1);
part_type_blend(ptDeathL, false);
part_type_life(ptDeathL, 15, 30);

// Dust (side)
ptDust1 = part_type_create();
part_type_shape(ptDust1, pt_shape_pixel);
part_type_size(ptDust1, 1, 1, 0, 0);
part_type_scale(ptDust1, 1, 1);
part_type_speed(ptDust1, 1, 3, 0, 1);
part_type_direction(ptDust1, 180, 180, 0, 10);
part_type_gravity(ptDust1, 0, 270);
part_type_orientation(ptDust1, 0, 0, 0, 0, false);
part_type_colour3(ptDust1, $FFFFFF, $FFFFFF, $FFFFFF);
part_type_alpha3(ptDust1, 1, 1, 1);
part_type_blend(ptDust1, false);
part_type_life(ptDust1, 10, 180);


// Dust (Vertical)
ptDust2 = part_type_create();
part_type_shape(ptDust2, pt_shape_pixel);
part_type_size(ptDust2, 1, 1, 0, 0);
part_type_scale(ptDust2, 1, 1);
part_type_speed(ptDust2, 1, 3, 0, 1);
part_type_direction(ptDust2, 90, 90, 0, 10);
part_type_gravity(ptDust2, 0, 270);
part_type_orientation(ptDust2, 0, 0, 0, 0, false);
part_type_colour3(ptDust2, $FFFFFF, $FFFFFF, $FFFFFF);
part_type_alpha3(ptDust2, 1, 1, 1);
part_type_blend(ptDust2, false);
part_type_life(ptDust2, 10, 180);
