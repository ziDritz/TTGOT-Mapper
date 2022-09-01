if mouse_check_button_pressed(mb_left) 
&& position_meeting(window_mouse_get_x(), window_mouse_get_y(), self) {
	Awake();
}

if (isActive){
	if (mouse_check_button_pressed(mb_left)) 
	&& !position_meeting(window_mouse_get_x(), window_mouse_get_y(), self){
		Sleep();
	}
		
	if (keyboard_check_pressed(vk_anykey) ) {
		if (isOnlyDigit)	str = string_digits(keyboard_string);
		else				str = keyboard_string;
	}
	
	if keyboard_check_direct(vk_lcontrol)
	&& keyboard_check_pressed(ord("V"))	{
		if clipboard_has_text()	{
			keyboard_string += clipboard_get_text();
			str = keyboard_string;
		}
	}
	
	

	
	//var input_next = keyboard_check_pressed(vk_tab);
	//var input_back = keyboard_check_direct(vk_lshift) && keyboard_check_pressed(vk_tab);

	//var navigate = input_next - input_back;
	//if navigate != 0 {
	//	iSelector += navigate;
	//	if selector >= array_length(oGUIHandler.arCanvas) selector = 0;
	//	if selector <= array_length(oGUIHandler.arCanvas) selector = 0;
}


	



	

