/// @description Variables

// room opened
opened = false;

// camera
camSpeed = 16;
cam_x = x;
cam_y = y;
camWidth = 680;
camHeight = 340;

// setup camera
view_enabled = true;
view_visible[0] = true;
view_camera[0] = camera_create_view(x,y, camWidth, camHeight, 0, noone, 0, 0, 0);

// setup vars
pinching = false;
view_a = 0;

// dragging
var drag_x = 0;
var drag_y = 0;

//Debug
touch_x[0] = 0;
touch_y[0] = 0;
touch_x[1] = 0;
touch_y[1] = 0;
midpoint_x = 0;
midpoint_y = 0;