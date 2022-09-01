	if keyboard_check_pressed(vk_down)		{
		ChangeFocus(eChangeFocus.down);
		DM("--");
		DM(iSelector);
		DM(oTest2.iSelector);
	}
	if keyboard_check_pressed(vk_up) 		{
		ChangeFocus(eChangeFocus.up);
		DM("++");
		DM(iSelector);
		DM(oTest2.iSelector);
	}