/// @description Initial Variables

//CURRENT CAMERA, WIDTH AND HEIGHT
cam = view_camera[0];
camW = 320;
camH = 180;

//VARIABLES
//target
targetx = target.x;
targety = target.y;

//camera speed
famount = 30;
famounth = 40;
famountv = 20;//50;

//buffer
buffer=80;

//extras
clampp=true;
lockx=false;
locky=false;
view_w_half=camera_get_view_width(cam)/2;
view_h_half=camera_get_view_height(cam)/2;

//SCREENSHAKE
shakelen=0;
shakemagnitude=0;
shakeremain=0;
shbuff=32;