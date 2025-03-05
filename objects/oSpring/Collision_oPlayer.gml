/// @description Makes player jump
/*if sprite_index!=sMola {
	sprite_index=sMola;
	image_index=0;*/
	with (other) {
		canmove = false;
		vsp =- other.strength;
		hsp = walksp*dir;
	}
	audio_play_sound(sndSpring,1,false);
	image_speed = 1;
//}
