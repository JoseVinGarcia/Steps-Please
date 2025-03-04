/// @description Rise and follow player

if (rising) {
	image_xscale = approach(image_xscale, 1, fracion);
	image_yscale = approach(image_yscale, 1, fracion);
	if image_xscale = 1 {
		rising = false;
	}
} else {
	speed = movesp;
	direction = dir;
}

// Destroying
if place_meeting(x, y, oSolid) instance_destroy();
