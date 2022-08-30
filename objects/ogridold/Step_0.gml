

if(mouse_check_button_pressed(mb_left)) {
	GetTileMouse();
	tileSelected = tile_mouse;
	if variable_instance_exists(tileSelected, "oTile")	SetTileText(tileSelected, oInputTextBox.str);
}

	

