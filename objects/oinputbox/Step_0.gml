if (isActive){
	if (mouse_check_button_pressed(mb_left)) 
	&& !position_meeting(window_mouse_get_x(), window_mouse_get_y(), self){
		DeactivateSelf();
	}
		
	if (keyboard_check_pressed(vk_anykey) ) {
		if (isOnlyDigit)	str = string_digits(keyboard_string);
		else				str = keyboard_string;
	}
}



	

