/// @description Teleport player to the mouse position
if instance_exists(player) && (global.debug) {
	player.x = mouse_x;
	player.y = mouse_y;
}