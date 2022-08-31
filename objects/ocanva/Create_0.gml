isActive		= false;
image_blend		= c_gray;

Awake = function () {
	isActive = true;
	image_blend = c_white;
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
