/// @description Makes player jump
/*if sprite_index!=sMola {
	sprite_index=sMola;
	image_index=0;*/
	with (other) {
		canmove = false;
		vsp =- other.strength;
		hsp = walksp*dir;
	}
	image_speed = 1;
//}
