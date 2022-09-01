title = "Change Tiles"

parent				= oGUIHandler;
i					= eCanva.ChangeTiles;
parent.arCanvas[i]	= self;
arInputBox = array_create(3);

enum eTilesInputBox {
	text,
	count,
	color	
}

Action = function (){

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
		var t		= grid.tiles[xx][yy];
		
		if (t.CheckEmpty() == true)	t.ChangeTile(text, color, t);
		else 						i--;
	}
}

