/// @description Pick up cube
if(alarm[0] <= 0){
if(!holdingItem_) {
		if(keyboard_check_pressed(ord("E"))){		
				holdingItem_ = true;
				show_debug_message("picking up box");
		}  
	
}
}

