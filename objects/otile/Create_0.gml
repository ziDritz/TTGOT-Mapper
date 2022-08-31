text = "";
xtscale = 0.33; 
ytscale = 0.33;
spriteWidthInit = sprite_width;

image_blend = c_white;

UpdatePosition = function (xx, yy){
	x = oGameHandler.grid.x + xx * oGameHandler.grid.tileSize;
	y = oGameHandler.grid.y + yy * oGameHandler.grid.tileSize ;
}

CheckEmpty = function() {
	if (text == "" && image_blend == c_white)	return true;
	else										return false;
}

ChangeTile = function(newText, color) {
	text = newText;
	
	// Check if text wither than tile sprite
	draw_set_font(f12);
	
	if string_width(text) >= spriteWidthInit {
		if string_pos(" ", text) != 0 {
			var pos = string_pos(" ", text);
			var textWithoutSpace = string_delete(text, pos, 1);
			text = string_insert("\n", textWithoutSpace, pos);
		}
		else {		
			ScaleText(0.75);
		}
	}
	
	image_blend = color;
}

ScaleText = function(fraction) {
	xtscale = xtscale * fraction;
	ytscale = ytscale * fraction;
}

Reset = function() {
	text = "";
	image_blend = c_white;
}
