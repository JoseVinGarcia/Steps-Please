/// @description Movement

// floats
var amount1 = .03;
var amount2 = .1;

y = y + sin(timer * amount1) * amount2;
timer += 1;

// makes top rise
if (rising) {
	var goal = (-sprite_height / 2) + 4;
	if (topy != goal) {
		topy = approach(topy, goal, 0.1);
		alarm[1] = 240;
	} else {
		rising = false;
	}
}
