/// @description Variables

// room opened
opened = false;

// camera
camWidth = 680;
camHeight = 340;

// camera setup
view_enabled = true;
view_visible[0] = true;
view_camera[0] = camera_create_view(x,y, camWidth, camHeight, 0, noone, 0, 0, 0);

// setup vars
pinching = false;

// dragging
drag_x = 0;
drag_y = 0;

//Debug
touch_x[0] = 0;
touch_y[0] = 0;
touch_x[1] = 0;
touch_y[1] = 0;
midpoint_x = 0;
midpoint_y = 0;