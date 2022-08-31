isActive		= false;
str				= "";
title			= 0;
isOnlyDigit		= false;
image_blend		= c_gray;

OnClick = function () {
	isActive = true;
	keyboard_string = "";
	image_blend = c_white;
}

DeactivateSelf = function() {
	isActive = false;
	keyboard_string = "";
	image_blend = c_gray;
}

