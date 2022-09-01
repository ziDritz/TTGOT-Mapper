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
	
	antiBug++;
	// En mode Run Sans l'antibug la condition se fait deux fois,
	// et seulement du passage du Canva New Grid vers Changes Tiles et pas l'inverse
	// Ce bug n'arrive pas avec le pas à pas en mode Debug
	// Ce bug est wtf
	if keyboard_check_pressed(vk_down) && antiBug > 5 {
		ChangeFocus(eChangeFocus.down);
		// Bug Checker
		// DM("---------------");
		// DM(oGUIHandler.arCanvas[1].arInputBox[0].isActive);
		// DM(oGUIHandler.arCanvas[1].arInputBox[1].isActive);
		antiBug = 0;
	}
	if keyboard_check_pressed(vk_up) && antiBug > 5	{
		ChangeFocus(eChangeFocus.up);
		antiBug = 0;
	}
}


