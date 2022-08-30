

if (mouse_check_button_pressed(mb_left)) {
	if (!position_empty(window_mouse_get_x(), window_mouse_get_y())) {
		var list	= ds_list_create();
		var num		= instance_position_list(window_mouse_get_x(), window_mouse_get_y(), all, list, false);
		if (num > 0) {
		    for (var i = 0; i < num; ++i;) {
		        var interactible = list[| i];
				interactible.OnClick();
		    }
		}
		ds_list_destroy(list);
	}
	else {
		oInputBox.isActive = false;
		oCanva.isActive = false;
	}
}

