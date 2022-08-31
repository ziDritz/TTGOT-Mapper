title = "Change Tiles"

oGameHandler.arCanvas[eCanva.ChangeTiles] = self;
arInputBox = array_create(3);

enum eTilesInputBox {
	text,
	count,
	color	
}

OnEnterKey = function (){

	var text	= arInputBox[eTilesInputBox.text].str;
	if (arInputBox[eTilesInputBox.count].str != "") {
	var count	= int64(arInputBox[eTilesInputBox.count].str);}
	else {
	var count	= 0;}
	var color	= StringToColor(arInputBox[eTilesInputBox.color].str);

	var grid	= oGameHandler.grid;
	var antiBug	= 0;
	
	for (var i = 0; i < count; i++) {

		//Infinity loop check
		if (antiBug > 100)	break;
		else				antiBug++; 
		
		var xx		= irandom(grid.width - 1);
		var yy		= irandom(grid.height - 1);
		var t		= grid.GetTile(xx, yy);	
		
		if (t.CheckEmpty() == true)	grid.ChangeTile(text, color, t);
		else 						i--;
	}
	
	oInputBox.str = "";
	oInputBox.isActive = false;
	
}

