tileSize = 64;

tiles[width - 1][height - 1] = 0;

for (var yy = 0 ; yy < height;	yy++) {
for (var xx = 0 ; xx < width ;	xx++) {
	
	//GetWorldPosition 
	// Taille de la fenêtre / 2 - taille de la grid / 2 + position gridX ou gridY de la tile * la taille du sprite
	var xWorldPos = (window_get_width() / 2) - (width * tileSize / 2) + xx * tileSize;
	var yWorldPos = (window_get_height() / 2) - (height * tileSize / 2) + yy * tileSize ;
	

	var tile = instance_create_layer(
		xWorldPos,
		yWorldPos,
		"Instances",
		oTile,
		{ gridX : xx,
		gridY : yy}
	);	
	
	tiles[xx][yy] = tile;	
}}


Loop = function(meth) {
	for (var yy = height - 1 ; yy >= 0;	yy--) {
	for (var xx = width - 1; xx >= 0 ;	xx--) {
		meth(xx, yy);
	}}
}

GetTile = function(xx, yy) {
	return tiles[xx][yy];
}

ChangeTile = function(text, color, tile) {
	tile.text = text;
	tile.image_blend = color;
}

DestroySelf = function() {
	Loop(function(xx, yy) {
		instance_destroy(tiles[xx][yy]);
	});
	instance_destroy();
	oGameHandler.grid = noone;
}

MoveTiles = function() {
	Loop(function(xx, yy) {
		var dirHorMove	= keyboard_check(ord("D")) - keyboard_check(ord("Q"))
		var hSpeed		= dirHorMove * 5;
		tiles[xx][yy].x += hSpeed;
	});
	
	Loop(function(xx, yy) {
		var dirVerMove	= keyboard_check(ord("S")) - keyboard_check(ord("Z"))
		var vSpeed		= dirVerMove * 5;
		tiles[xx][yy].y += vSpeed;
	});
}

//DisplayDebug = function() {
	
//	draw_set_halign(fa_left);
//	var shift_y			= font_get_size(fDefault) * 3;
//	var xx_d	= 32;
//	var yy_d	= 0;
//	var i				= 0;

//	if (variable_instance_exists(tile_mouse, "oTile")) draw_text(xx_d, yy_d + shift_y * i++, string(tile_mouse.id) + " " + string(tile_mouse.y));
//	draw_text(xx_d, yy_d + shift_y * i++, string(mouse_free_grid_x));
//	draw_text(xx_d, yy_d + shift_y * i++, string(mouse_free_grid_y));
//	draw_text(xx_d, yy_d + shift_y * i++, string(mouse_grid_x));
//	draw_text(xx_d, yy_d + shift_y * i++, string(mouse_grid_y));
//}


//GetTileMouse = function(){
//	var mouse_free_grid_x = floor(mouse_x / tileSize);
//	var mouse_free_grid_y = floor(mouse_y / tileSize);
//	//Empêche les coordonnées de sortir de la grille (on pourra pas avoir grid_x = 12 si on a que 8 collones)
//	var mouse_grid_x = clamp(mouse_free_grid_x, 0, width-1);
//	var mouse_grid_y = clamp(mouse_free_grid_y, 0, height-1);
//	
//	return GetTile(mouse_grid_x, mouse_grid_y);
//}