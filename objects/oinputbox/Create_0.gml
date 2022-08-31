isActive		= false;
str				= "";
title			= 0;
isOnlyDigit		= false;
image_blend		= c_gray;

Awake = function () {
	isActive = true;
	keyboard_string = "";
	image_blend = c_white;
}

Sleep = function() {
	isActive = false;
	keyboard_string = "";
	image_blend = c_gray;
}

Reset = function() {
	isActive		= false;
	str				= "";
	isOnlyDigit		= false;
	image_blend		= c_gray;
}
