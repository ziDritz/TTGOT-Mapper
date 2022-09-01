isActive		= false;
image_blend		= c_gray;
iSelector = 0;
parent = oGUIHandler;
antiBug = 0;

ChangeFocus = function(changeFocus) {
	arInputBox[iSelector].Sleep();

	switch(changeFocus) {
		case eChangeFocus.down:		
			if iSelector + 1 >= array_length(arInputBox) {
				oGUIHandler.ChangeFocus(eChangeFocus.down);
			}
			else {
				iSelector++;
				arInputBox[iSelector].Awake()
			}
		break;
		
		case eChangeFocus.up:		
			if iSelector - 1 < 0 {
				oGUIHandler.ChangeFocus(eChangeFocus.up);
			}
			else {
				iSelector--;
				arInputBox[iSelector].Awake()
			}
		break;
	}
}

AwakeChild = function(i) {
	arInputBox[i].Awake();
}

Awake = function () {
	isActive = true;
	image_blend = c_white;
	parent.iSelector = i;
}

Sleep = function() {
	isActive	= false;
	image_blend = c_gray;
}

Reset = function() {
	for (var i = 0; i < array_length(arInputBox); i++) {
		arInputBox[i].Reset();
	}
	Sleep();
}


