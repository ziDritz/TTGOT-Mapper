if mouse_check_button_pressed(mb_left) 
&& position_meeting(window_mouse_get_x(), window_mouse_get_y(), self) {
	Awake();
	if (instance_exists(oGameHandler.grid) && oGameHandler.grid.isActive == true)	oGameHandler.grid.Sleep();
}

if (isActive) {
	if (keyboard_check_pressed(vk_enter)) {
		Action();
		Reset();
		if (instance_exists(oGameHandler.grid) && (oGameHandler.grid.isActive == false))	oGameHandler.grid.Awake();
	}
	
	if mouse_check_button_pressed(mb_left) 
	&& !position_meeting(window_mouse_get_x(), window_mouse_get_y(), self) {
		Sleep();
		if (instance_exists(oGameHandler.grid) && (oGameHandler.grid.isActive == false))	oGameHandler.grid.Awake();
	}
}





