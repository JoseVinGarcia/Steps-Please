/// @description Changes text according to Room
if (room = rEnding1) {
	with (oShipB) {
		topy = (-sprite_height / 2) + 4;
	}
	buffer3 = 1;
	text2 = "However, you were\nunable to escape.\nTry again!"
} else {
	buffer3 = 64;
	text2 = "You are now free!"
}

with (oGame) {
	cantimer = false;
	timeractive = false;
}