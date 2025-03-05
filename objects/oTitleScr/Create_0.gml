/// @description Initial variables, Also zooms in
sprite_index = sButtonP;

// camera code
wwmax = camera_get_view_width(view_camera[0]);
yymax = camera_get_view_height(view_camera[0]);
ww = camera_get_view_width(view_camera[0]) / 2;
yy = camera_get_view_height(view_camera[0]) / 2;
fracc = 5;
active = false;
camera_set_view_size(view_camera[0], ww / 2, yy / 2);

// space button
alarm[0] = 240;
spaceb = false;
spacetransp = 0;


