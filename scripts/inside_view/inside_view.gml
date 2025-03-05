function inside_view(){
	var xview=camera_get_view_x(view_camera[0]);
	var yview=camera_get_view_y(view_camera[0]);
	var wview=camera_get_view_width(view_camera[0]);
	var hview=camera_get_view_height(view_camera[0]);

	if x > xview and y > yview and x < xview + wview and y < yview + hview {
		return true
	} else {
		return false
	}
	//{ inscene=1 } else { inscene=0 }
}
