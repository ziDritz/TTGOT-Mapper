arCanvas = array_create(2);
iSelector = 0;

enum eChangeFocus {
	up,
	down
}

enum eCanva {
	NewGrid,
	ChangeTiles
}


ChangeFocus = function(changeFocus) {
	
	arCanvas[iSelector].Sleep();

	switch(changeFocus) {
		case eChangeFocus.down:		
			if iSelector + 1 >= array_length(arCanvas) 	iSelector = 0;
			else										iSelector++;
		break;
			
		case eChangeFocus.up:		
			if iSelector - 1 < 0 						iSelector = array_length(arCanvas) - 1;
			else										iSelector--;
		break;
	}
	
	arCanvas[iSelector].Awake()
	
	switch(changeFocus) {
		case eChangeFocus.down:	
			with (arCanvas[iSelector]) {
				iSelector = 0;
				AwakeChild(iSelector);
			}
		break;
		case eChangeFocus.up:		
			arCanvas[iSelector].iSelector = array_length(arCanvas[iSelector].arInputBox) - 1;
			arCanvas[iSelector].AwakeChild(array_length(arCanvas[iSelector].arInputBox) - 1);	
		break;
	}
}