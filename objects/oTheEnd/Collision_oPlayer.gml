/// @description Ends game
if (other.canmove) {
	pending = instance_create_layer(other.x, other.y, "Player", oPending);
	with (other) instance_destroy();
	alarm[0] = 240;
}