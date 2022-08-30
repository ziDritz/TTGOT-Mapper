tileSize = 64;

tiles[width - 1][height - 1] = 0;

for (var yy = 0 ; yy < height;	yy++) {
for (var xx = 0 ; xx < width ;	xx++) {
	
	//GetWorldPosition 
	var xWorldPos = xx * tileSize;
	var yWorldPos = yy * tileSize;

	
	var tile = instance_create_layer(
		xWorldPos,
		yWorldPos,
		"Instances",
		oTile,
		{ gridX : xx,
		gridY : yy}
	);	
	
	tiles[xx][yy] = tile;
	DM(tiles[xx][yy]);
	
	
}}


Loop = function(meth) {
	for (var yy = height - 1 ; yy >= 0;	yy--) {
	for (var xx = width - 1; xx >= 0 ;	xx--) {
		meth(xx, yy);
	}}
}

GetTileMouse = function(){
	var mouse_free_grid_x = floor(mouse_x / tileSize);
	var mouse_free_grid_y = floor(mouse_y / tileSize);
	//Empêche les coordonnées de sortir de la grille (on pourra pas avoir grid_x = 12 si on a que 8 collones)
	var mouse_grid_x = clamp(mouse_free_grid_x, 0, width-1);
	var mouse_grid_y = clamp(mouse_free_grid_y, 0, height-1);
	
	return GetTile(mouse_grid_x, mouse_grid_y);
}

GetTile = function(xx, yy) {
	return tiles[xx][yy];
}

SetTileText = function(tile, text){
	tile.text = text;
}

DestroySelf = function() {
	Loop(function(xx, yy) {
		instance_destroy(tiles[xx][yy]);
	});
	instance_destroy();
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