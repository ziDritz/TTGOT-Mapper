/// @desc

if (keyboard_check(ord("Q"))) camera_x -=5;
if (keyboard_check(ord("D"))) camera_x +=5;
if (keyboard_check(ord("Z"))) camera_y -=5;
if (keyboard_check(ord("S"))) camera_y +=5;
camera_set_view_pos(view_camera[0], camera_x, camera_y);