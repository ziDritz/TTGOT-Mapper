if keyboard_check_pressed(vk_f12) {
	if !window_get_fullscreen()	window_set_fullscreen(true);
	else						window_set_fullscreen(false);
}

if keyboard_check_pressed(vk_f1)	DM(oGUIHandler.arCanvas[0].title);


	



