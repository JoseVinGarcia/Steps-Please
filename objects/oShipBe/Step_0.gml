/// @description Movement
if (active) && (instance_exists(target)) {
	hsp += sign(target.x - x) * accel;
	hsp=clamp(hsp,-movesp,movesp);
	vsp=clamp(vsp,-movesp,movesp);
	topy = approach(topy, (-sprite_height / 2) + 4, 0.1);
}

npc_move_collide();
