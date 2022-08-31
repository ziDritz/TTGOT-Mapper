if mouse_check_button_pressed(mb_left) 
&& position_meeting(window_mouse_get_x(), window_mouse_get_y(), self) {
	var newText		= oGameHandler.arCanvas[eCanva.ChangeTiles].arInputBox[eTilesInputBox.text].str;
	var newColor	= StringToColor(oGameHandler.arCanvas[eCanva.ChangeTiles].arInputBox[eTilesInputBox.color].str);
	
	ChangeTile(newText, newColor);
}

if mouse_check_button_pressed(mb_right)
&& position_meeting(window_mouse_get_x(), window_mouse_get_y(), self) {
	Reset();
}


