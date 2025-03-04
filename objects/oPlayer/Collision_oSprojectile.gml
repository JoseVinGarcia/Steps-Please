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
	with (other) instance_destroy();
}