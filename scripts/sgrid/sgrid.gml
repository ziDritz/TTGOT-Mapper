function NewTiles (width, height) {
	
	for (var yy = 0; yy < height;	yy++) {
	for (var xx = 0; xx < width;	xx++) {
			
		// x,y
		toInstX = xx;
		toInstY = yy;
		screen_x = xx * tileSize; 
		screen_y = yy * tileSize;
		
		// Instanciation
		
		var inst = instance_create_layer(
			screen_x,
			screen_y,
			"Instances_1",
			oTile
		);	
		
		with (inst)
		{
		    grid_x = other.toInstX;
		    grid_y = other.toInstY;
		}
		
		
		tiles[xx][yy] = inst;
	}}
}

function SetTileText(tile, text){
	tile.text = text;
}

function DisplayDebug() {
	
	draw_set_halign(fa_left);
	var shift_y			= font_get_size(fDefault) * 3;
	var xx_d	= 32;
	var yy_d	= 0;
	var i				= 0;

	if (variable_instance_exists(tile_mouse, "oTile")) draw_text(xx_d, yy_d + shift_y * i++, string(tile_mouse.id) + " " + string(tile_mouse.y));
	draw_text(xx_d, yy_d + shift_y * i++, string(mouse_free_grid_x));
	draw_text(xx_d, yy_d + shift_y * i++, string(mouse_free_grid_y));
	draw_text(xx_d, yy_d + shift_y * i++, string(mouse_grid_x));
	draw_text(xx_d, yy_d + shift_y * i++, string(mouse_grid_y));
}