/// @description Effect coding
// floats
var amount1 = .03;
var amount2 = .1;

y = y + sin(timer * amount1) * amount2;
timer += 1;

//gradually grow/shrink sprites
pos1 = approach(pos1, 1, fracc);
pos2 = approach(pos2, 0, fracc);

//if it reaches the max size, resets
if pos1 == 1 {
	pos1 = 0;
	pos2 = 1;
	image_index += 1;
}

// gets smaller
if (smalling) {
	image_yscale = approach(image_yscale, 0, fracc);
}
