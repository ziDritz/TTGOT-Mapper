iSelector = 0;

ChangeFocus = function(changeFocus) {
	
	switch(changeFocus) {
		case eChangeFocus.down:		
			if iSelector + 1 >= 3 {
				oTest2.ChangeFocus(eChangeFocus.down);
			}
			else {
				iSelector++;
			}
		break;
			
		case eChangeFocus.up:		
			if iSelector - 1 < 0 {
				oTest2.ChangeFocus(eChangeFocus.up);
			}
			else {
				iSelector--;
			}
		break;
	}
}