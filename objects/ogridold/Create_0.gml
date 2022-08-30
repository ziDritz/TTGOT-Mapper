/// @desc
#macro RES_W 1366
#macro RES_H 768

isGridSet = false;

columns			= 1;
rows			= 1;
tileSize		= 64;
tiles			= array_create(columns, array_create(rows, noone));

tile_mouse		= noone;
tileSelected	= noone;

mouse_free_grid_x	= undefined;
mouse_free_grid_y	= undefined;
mouse_grid_x		= undefined;
mouse_grid_y		= undefined;

NewTiles(columns, rows);

isGridSet = true;
