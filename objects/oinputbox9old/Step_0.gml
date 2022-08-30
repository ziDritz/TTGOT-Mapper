if (mouse_check_button_pressed(mb_left)) {
	if (instance_position(window_mouse_get_x(), window_mouse_get_y(), self)) {
		keyboard_string = "";
		isActive = true;
	}
	else {
		isActive = false
	}
}


if (isActive){
	if (keyboard_check_pressed(vk_anykey)) {
		if (isOnlyDigit)	str = string_digits(keyboard_string);
		else				str = keyboard_string;
	}
}



	

