tileSize = 64;
isActive = true;

tiles[width - 1][height - 1] = 0;

// Taille de la fenêtre / 2 - taille de la grid / 2
x = (window_get_width() / 2) - (width * tileSize / 2);
y = (window_get_height() / 2) - (height * tileSize / 2);

for (var yy = 0 ; yy < height;	yy++) {
for (var xx = 0 ; xx < width ;	xx++) {

	//GetWorldPosition 
	//pos grid + position gridX ou gridY de la tile * la taille du sprite
	var xWorldPos = x + xx * tileSize;
	var yWorldPos = y + yy * tileSize ;
	
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

Awake = function() {
	isActive = true;
}

Sleep = function() {
	isActive = false;
}

Reset = function() {
	Loop(function(xx, yy) {
		tiles[xx][yy].Reset();
	});
}

Loop = function(meth) {
	for (var yy = height - 1 ; yy >= 0;	yy--) {
	for (var xx = width - 1; xx >= 0 ;	xx--) {
		meth(xx, yy);
	}}
}

UpdateTilesPosition = function() {
	Loop(function(xx, yy) {
		tiles[xx][yy].UpdatePosition(xx, yy);
	});
}

Scale = function(fraction) {
	tileSize = tileSize * fraction;
	UpdateTilesPosition();
	for (var yy = 0 ; yy < height;	yy++) {
	for (var xx = 0 ; xx < width ;	xx++) {
		tiles[xx][yy].image_xscale = tiles[xx][yy].image_xscale * fraction;
		tiles[xx][yy].image_yscale = tiles[xx][yy].image_yscale * fraction;
		tiles[xx][yy].xtscale = tiles[xx][yy].xtscale * fraction;
		tiles[xx][yy].ytscale = tiles[xx][yy].ytscale * fraction;
	}}
}
//Fisher-Yates (aka Knuth) Shuffle
Shuffle = function() {
	var rY, rX, buffer;

	// While there remain elements to shuffle.
	for (var yy = height-1; yy >= 0; yy--) {
	for (var xx = width-1; xx >= 0; xx--) {

		// Pick a remaining element.
		rX = irandom(xx);
		rY = irandom(yy);
		
		// And swap it with the current element.
		buffer = tiles[xx][yy];
		tiles[xx][yy] = tiles[rX][rY];
		tiles[rX][rY] = buffer;

	}
	}
	
	UpdateTilesPosition();
}

DestroySelf = function() {
	Loop(function(xx, yy) {
		instance_destroy(tiles[xx][yy]);
	});
	instance_destroy();
	oGameHandler.grid = noone;
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