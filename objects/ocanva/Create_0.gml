isActive		= false;
image_blend		= c_gray;

OnClick = function () {
	isActive = true;
	image_blend = c_white;
}

DeactivateSelf = function() {
	isActive	= false;
	image_blend = c_gray;
}

