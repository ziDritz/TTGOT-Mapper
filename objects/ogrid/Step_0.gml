if isActive {

	if keyboard_check(ord("D"))
	|| keyboard_check(ord("Q"))
	|| keyboard_check(ord("Z"))
	|| keyboard_check(ord("S")) {
		
		var dirHorMove	= keyboard_check(ord("D")) - keyboard_check(ord("Q"))
		var hSpeed		= dirHorMove * 5;
		x				+= hSpeed;
		
		var dirVerMove	= keyboard_check(ord("S")) - keyboard_check(ord("Z"))
		var vSpeed		= dirVerMove * 5;
		y				+= vSpeed;
		
		UpdateTilesPosition();
	}
	
	if keyboard_check_pressed(ord("H")) Shuffle();
	
	if keyboard_check_pressed(ord("R")) Reset();
	
	if keyboard_check_pressed(ord("W")) Scale(1 / 1.2);
	
	if keyboard_check_pressed(ord("X")) Scale(1.2);
	
}


