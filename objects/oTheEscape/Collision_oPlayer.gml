/// @description Activates ending sequence
oCamera.active = true;
with (oGame) {
	cantimer = false;
	timeractive = false;
}
oShipB.confetti = false;
instance_destroy();
