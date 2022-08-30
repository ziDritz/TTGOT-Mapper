	// Instanciate Grid
function NewGrid (width, height) {
	return instance_create_layer(
		0,
		0, 
		"Instances", 
		oGrid, {
		width : width,
		height : height 
	});
}