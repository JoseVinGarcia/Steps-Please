/// @description Moving + Coliding conditions

// Moving
if (activated) hsp = dir * movesp;

// Coliding
if place_meeting(x + hsp, y, oSolid) {
	while !place_meeting(x + sign(hsp), y, oSolid) {
		x += sign(hsp); }
	hsp = 0;
	dir *= -1; }
x += hsp;

// Conditions
if instance_exists(player) {

	//checks if player's y + half of player's height is bigger than our y 
	//round keeps numbers into interger
	
	if (round(player.y + (player.sprite_height / 2)) > y) {
	//if player.bbox_bottom>y {
		mask_index = -1;
	} else {
		mask_index = sSemiSolid;
		if place_meeting(x, y - 1, player) player.hspcarry = hsp;
	}
}