iSelector = 0;

ChangeFocus = function(changeFocus) {
	switch(changeFocus) {
		case eChangeFocus.down:		
			if iSelector + 1 >= 3 						iSelector = 0;
			else										iSelector++;
		break;
			
		case eChangeFocus.up:		
			if iSelector - 1 < 0 						iSelector = 3 - 1;
			else										iSelector--;
		break;
	}
	
	switch(changeFocus) {
		case eChangeFocus.down:	
			with (oTest) {
				iSelector = 0;

			}
		break;
		case eChangeFocus.up:		
			oTest.iSelector = 3 - 1;
		break;
	}
}