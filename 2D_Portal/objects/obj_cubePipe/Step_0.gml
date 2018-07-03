/// @description Insert description here
// You can write your code in this editor


if(impulse_ == true ) {	
	if(cubeInstanceId_ != ""){
			instance_destroy(cubeInstanceId_);
			cubeInstanceId_ = "";
		}  
	cubeInstanceId_ = instance_create_layer(x + 16, y +16, "item_layer", obj_cube);
	impulse_ = false;	
} else if(alwaysOn_ == true) {
	if(cubeInstanceId_ == "" || !instance_exists(cubeInstanceId_)){
			cubeInstanceId_ = instance_create_layer(x + 16, y +16, "item_layer", obj_cube);
	}  
} 