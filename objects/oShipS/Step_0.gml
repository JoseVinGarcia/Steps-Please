/// @description Movement
if (active) && instance_exists(target) {
	if (followh) {
		hsp += sign(target.x - x) * accel;
	} else if (followv) {
		vsp += sign(target.y - y) * accel;
	} else {
		// floats
		var amount1 = .03;
		var amount2 = .1;

		y = y + sin(timer * amount1) * amount2;
		timer += 1;
	}
	hsp=clamp(hsp,-movesp,movesp);
	vsp=clamp(vsp,-movesp,movesp);
}

npc_move_collide();
