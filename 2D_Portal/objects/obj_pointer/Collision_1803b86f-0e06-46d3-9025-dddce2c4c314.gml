/// @description Insert description here
// You can write your code in this editor
/// @description Pick up cube
if(obj_player.alarm[0] <= 0){
	if(obj_player.pickupItemId_ == "") {
			if(keyboard_check_pressed(ord("E"))){		
					obj_player.pickupItemId_ = other.id;
			}  	
	}
}
