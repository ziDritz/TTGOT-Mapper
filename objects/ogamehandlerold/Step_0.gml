if (mouse_check_button_pressed(mb_left)) {
	if (instance_position(window_mouse_get_x(), window_mouse_get_y(), self)) {
		keyboard_string = "";
		isActive = true;
	}
	else {
		isActive = false
	}
}

if (keyboard_check_pressed(vk_enter)) {

	var oInputXBox = inputBoxGrid[0];
	var oInputYBox = inputBoxGrid[1];

	if (oInputXBox.str != "" && oInputYBox.str != "") {
		if (instance_exists(oTile))		instance_destroy(oTile);
			
		var newWidth	= int64(oInputXBox.str);
		var newHeight	= int64(oInputYBox.str);

		oGrid.columns	= newWidth;
		oGrid.rows		= newHeight;
		with (oGrid)	NewTiles(newWidth, newHeight); 
		
		keyboard_string = "";
		oInputBox.str = "";
		oInputBox.isActive = false;
	}

	var oInputTextBox	= inputBoxText[0];
	var oInputCountBox	= inputBoxText[1];
	var oInputColorBox	= inputBoxText[2];	

	if (oInputTextBox.str != "" 
	&& oInputCountBox.str != "") {
		
		var text	= oInputTextBox.str;
		var count	= int64(oInputCountBox.str);
		
		var antiBug = 0;
		
		for (var i = 0; i < count; i++) {

			if (antiBug > 100)	break;
			else				antiBug++; 
		
			var xx = irandom(oGrid.columns - 1);
			var yy = irandom(oGrid.rows - 1);
			
			var t = oGrid.tiles[xx][yy];		
			
			if (t.text = "") {
				t.text = text;
				
				if (oInputColorBox.str != "") {
					switch (oInputColorBox.str) {
						case "aqua":  		t.image_blend = c_aqua;		break;
						case "black":		t.image_blend = c_black; 	break;
						case "blue":  		t.image_blend = c_blue;		break;
						case "dkgray":		t.image_blend = c_dkgray; 	break;
						case "fuchsia":		t.image_blend = c_fuchsia;	break;
						case "gray":  		t.image_blend = c_gray; 	break;
						case "green":		t.image_blend = c_green; 	break;
						case "lime":  		t.image_blend = c_lime; 	break;
						case "ltgray":		t.image_blend = c_ltgray; 	break;
						case "maroon":		t.image_blend = c_maroon; 	break;
						case "navy":  		t.image_blend = c_navy; 	break;
						case "olive":		t.image_blend = c_olive; 	break;
						case "orange":		t.image_blend = c_orange; 	break;
						case "purple":		t.image_blend = c_purple; 	break;
						case "red":			t.image_blend = c_red; 	  	break;
						case "silver":		t.image_blend = c_silver; 	break;
						case "teal":  		t.image_blend = c_teal; 	break;
						case "white":		t.image_blend = c_white; 	break;
						case "yellow":		t.image_blend = c_yellow; 	break;
						default:										break;
					}
				}
			}
			else { 
				i--;
			}
		}
		
		keyboard_string = "";
		oInputBox.str = "";
		oInputBox.isActive = false;
	}
}



