function DM(mes) {
	show_debug_message(mes);
}

function StringToColor(str){
	var col = c_white;
	switch (str) {
		case "aqua":  		col = c_aqua;		break;
		case "black":		col = c_black; 		break;
		case "blue":  		col = c_blue;		break;
		case "dkgray":		col = c_dkgray; 	break;
		case "fuchsia":		col = c_fuchsia;	break;
		case "gray":  		col = c_gray; 		break;
		case "green":		col = c_green; 		break;
		case "lime":  		col = c_lime; 		break;
		case "ltgray":		col = c_ltgray; 	break;
		case "maroon":		col = c_maroon; 	break;
		case "navy":  		col = c_navy; 		break;
		case "olive":		col = c_olive; 		break;
		case "orange":		col = c_orange; 	break;
		case "purple":		col = c_purple; 	break;
		case "red":			col = c_red; 	  	break;
		case "silver":		col = c_silver; 	break;
		case "teal":  		col = c_teal; 		break;
		case "white":		col = c_white; 		break;
		case "yellow":		col = c_yellow; 	break;
		default:								break;
	}
	return col;
}
