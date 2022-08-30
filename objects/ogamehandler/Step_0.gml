

if (mouse_check_button_pressed(mb_left)) {
	var list	= ds_list_create();
	var num		= instance_position_list(window_mouse_get_x(), window_mouse_get_y(), all, list, false);
	if (num > 0) {
	    for (var i = 0; i < num; ++i;) {
	        var interactible = list[| i];
			DM(interactible);
			interactible.OnClick();
	    }
	}
	else {
		oInputBox.isActive = false;
		oCanva.isActive = false;
	}
	ds_list_destroy(list);
}



