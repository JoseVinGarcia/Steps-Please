/// @description Moves
var onthefloor = place_meeting(x, y + 1, oSolid);

hsp += walksp;
image_index += 0.1;

//Gravity
vsp = vsp + grv;
if vsp > 3 { vsp = 3; }

//Final Horizontal Speed
var hspfinal = hsp + hspcarry;
hspcarry = 0;

// Coliding Horizontal
if place_meeting(x + hspfinal, y, oSolid) {
	yplus = 0;
	while place_meeting(x + hspfinal, y - yplus, oSolid) && yplus <= abs(1 * hspfinal) {
		yplus += 1;
	}
	if place_meeting(x + hspfinal, y - yplus, oSolid) {
		while !place_meeting(x + sign(hspfinal), y, oSolid) {
			x += sign(hspfinal); }
		hsp = 0;
		hspfinal = 0;
	} else {
		y -= yplus;
	}
}
x += hspfinal;

// Slopes
if !place_meeting(x, y, oSolid) && vsp >= 0 && place_meeting(x, y + 2 + abs(hspfinal), oSolid) {
	while !place_meeting(x, y + 1, oSolid) { y += 1 } }

//Coliding Vertical
if place_meeting(x, y + vsp, oSolid) {
	while !place_meeting(x, y + sign(vsp), oSolid) {
		y += sign(vsp); }
	vsp = 0;
	canmove = true;
}
y += vsp;