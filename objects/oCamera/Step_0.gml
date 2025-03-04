/// @description Following Player

//Follow target
if (active) && (instance_exists(target)) {
	var dir = point_direction(x, y, targetx, targety);
	var totaldist = point_distance(x, y, targetx, targety);
	targetx = target.x;
	targety = target.y;
	// We pick the smaller of the two distances between the move speed and the total distance left to move
	var dist = min(famount/4, totaldist);
	x += lengthdir_x(dist, dir);
	y += lengthdir_y(dist, dir);
}

//Clamp the view into the room
if (clampp) {
	x=clamp(x,view_w_half,room_width-view_w_half);
	y=clamp(y,view_h_half,room_height-view_h_half);
}

//Screenshake
x+=random_range(-shakeremain,shakeremain);
y+=random_range(-shakeremain,shakeremain);
shakeremain=max(0,shakeremain-((1/shakelen)*shakemagnitude));

//update camera view
//camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
camera_set_view_pos(
	cam,
	floor(x-(camW*0.5)),
	floor(y-(camH*0.5))
);