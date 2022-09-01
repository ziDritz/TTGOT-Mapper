title = "New Grid"

parent				= oGUIHandler;
i					= eCanva.NewGrid;
parent.arCanvas[i]	= self;
arInputBox = array_create(2);

enum eGridInputBox {
	X,
	Y
}

Action = function() {
	var oInputXBox = arInputBox[eGridInputBox.X];
	var oInputYBox = arInputBox[eGridInputBox.Y];
	
	if (oInputXBox.str != "" && oInputYBox.str != "") {

		if (oGameHandler.grid != noone)		oGameHandler.grid.DestroySelf();
			
		var newWidth	= int64(oInputXBox.str);
		var newHeight	= int64(oInputYBox.str);

		oGameHandler.grid = NewGrid(newWidth, newHeight);
	}
}
