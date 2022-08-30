title = "Change Tiles"

oGameHandler.arCanvas[eCanva.ChangeTiles] = self;
arInputBox = array_create(3);

enum eTilesInputBox {
	text,
	count,
	color	
}

OnEnterKey = function (){
	var oInputTextBox	= arInputBox[eTilesInputBox.text];
	var oInputCountBox	= arInputBox[eTilesInputBox.count];
	var oInputColorBox	= arInputBox[eTilesInputBox.color];	

	if (oInputTextBox.str != "" 
	&& oInputCountBox.str != "") {

		var text	= oInputTextBox.str;
		var count	= int64(oInputCountBox.str);
		
		var antiBug = 0;
		
		for (var i = 0; i < count; i++) {

			if (antiBug > 100)	break;
			else				antiBug++; 
			
			var grid = oGameHandler.grid;

			var xx = irandom(grid.width - 1);
			var yy = irandom(grid.height - 1);
			
			var t = grid.GetTile(xx, yy);		
					
			if (t.text = "") {
				t.text = text;
				t.image_blend = c_red;
				//switch (oInputColorBox.str) {
				//	case "aqua":  		t.image_blend = c_aqua;		break;
				//	case "black":		t.image_blend = c_black; 	break;
				//	case "blue":  		t.image_blend = c_blue;		break;
				//	case "dkgray":		t.image_blend = c_dkgray; 	break;
				//	case "fuchsia":		t.image_blend = c_fuchsia;	break;
				//	case "gray":  		t.image_blend = c_gray; 	break;
				//	case "green":		t.image_blend = c_green; 	break;
				//	case "lime":  		t.image_blend = c_lime; 	break;
				//	case "ltgray":		t.image_blend = c_ltgray; 	break;
				//	case "maroon":		t.image_blend = c_maroon; 	break;
				//	case "navy":  		t.image_blend = c_navy; 	break;
				//	case "olive":		t.image_blend = c_olive; 	break;
				//	case "orange":		t.image_blend = c_orange; 	break;
				//	case "purple":		t.image_blend = c_purple; 	break;
				//	case "red":			t.image_blend = c_red; 	  	break;
				//	case "silver":		t.image_blend = c_silver; 	break;
				//	case "teal":  		t.image_blend = c_teal; 	break;
				//	case "white":		t.image_blend = c_white; 	break;
				//	case "yellow":		t.image_blend = c_yellow; 	break;
				//	default:										break;
				//}
			}
			else { 
				i--;
			}
		}
		
		oInputBox.str = "";
		oInputBox.isActive = false;
	}
}