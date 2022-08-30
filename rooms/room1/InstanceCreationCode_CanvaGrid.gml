title = "New Grid"

oGameHandler.arCanvas[eCanva.NewGrid] = self;
arInputBox = array_create(2);

enum eGridInputBox {
	X,
	Y
}

OnEnterKey = function() {
	var oInputXBox = arInputBox[eGridInputBox.X];
	var oInputYBox = arInputBox[eGridInputBox.Y];
	
	//DM(oInputXBox.str);
	//DM(oInputYBox.str);
	
	if (oInputXBox.str != "" && oInputYBox.str != "") {
		if (instance_exists(oGrid))		{
			instance_destroy(oTile);
			instance_destroy(oGrid);
			oGameHandler.grid = noone;
		}
			
		var newWidth	= int64(oInputXBox.str);
		var newHeight	= int64(oInputYBox.str);

		oGameHandler.grid = NewGrid(newWidth, newHeight);
		
		oInputXBox.str = "";
		oInputYBox.str = "";
		oInputBox.isActive = false;
	}
}
