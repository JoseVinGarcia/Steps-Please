function npc_move_collide(){
	//horizontal
	if place_meeting(x + hsp, y, oSolid) {
		while !place_meeting(x + sign(hsp), y, oSolid) {
			x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;
	//vertical
	if place_meeting(x, y + vsp, oSolid) {
		while !place_meeting(x, y + sign(vsp), oSolid) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}
