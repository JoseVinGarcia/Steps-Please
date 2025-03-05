/// @description Moving and Coliding
var onthefloor = place_meeting(x,y+1,oSolid)
var walkp = keyboard_check_pressed(vk_space);
var walkr = keyboard_check_released(vk_space);
var jump = keyboard_check(vk_space);

// Moving (only on ground)
if (canmove) {
	if (walkp or walkr) {
		hsp += walksp;
		image_index += 1;
		sprite_index = sPlayerW;
		audio_play_sound(sndStep,1,false);
	} else {
		hsp = 0;
	}
	hsp = hsp * dir;
}

//Gravity
vsp = vsp + grv;
if vsp > 3 { vsp = 3; }

//Jumping
if (jump) && (onthefloor) {
	jumpl = approach(jumpl, jumplxmax, jumplfrac)
	if jumpl = jumplxmax {
		canmove = false;
		vsp = -jumpsp;
		hsp = (walksp / 2) * dir;
		audio_play_sound(sndJump,1,false);
	}
} else {
	jumpl = 0;
}

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
		if (onthefloor) {
			dir *= -1;
		}
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

// Sprites section
image_xscale = dir;
if !onthefloor {
	sprite_index = sPlayerA;
} else {
	if sprite_index = sPlayerA sprite_index = sPlayerW;
}
