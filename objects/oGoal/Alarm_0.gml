/// @description Go to next level
if (room != rEnding1) {
	if room_exists(room_next(room)) {
		room_goto_next();
	}
} else {
	game_restart();
}
