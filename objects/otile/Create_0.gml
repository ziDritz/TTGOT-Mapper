/// @desc
text = "";
image_blend = c_white;

OnClick = function (){
	var newText		= oGameHandler.arCanvas[eCanva.ChangeTiles].arInputBox[eTilesInputBox.text].str;
	var newColor	= StringToColor(oGameHandler.arCanvas[eCanva.ChangeTiles].arInputBox[eTilesInputBox.color].str);
	text			= newText;
	image_blend		= newColor;
}

CheckEmpty = function() {
	if (text == "" && image_blend == c_white)	return true;
	else										return false;
}

Reset = function() {
	text = "";
	image_blend = c_white;
}
