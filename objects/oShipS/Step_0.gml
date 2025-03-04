/// @description Movement
if (active) && instance_exists(target) {
	if (followh) {
		hsp += sign(target.x - x) * accel;
	}
	if (followv) {
		vsp += sign(target.y - y) * accel;
	}
	hsp=clamp(hsp,-movesp,movesp);
	vsp=clamp(vsp,-movesp,movesp);
}

npc_move_collide();
