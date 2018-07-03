/// @description 

// Sets the door to be activated after press

var matchingDoor_ = "";

var pressedButton = instance_;
var i;
for (i = 0; i < instance_number(obj_door_big); i += 1){
	var door_instance_id = instance_find(obj_door_big,i);
	with (door_instance_id)  {
			if(doorName_ == pressedButton){
				matchingDoor_ = door_instance_id;	
			}
	}	
}

// opens or closes door

if place_meeting(x, y - 1, obj_solid) || place_meeting(x, y - 1, obj_player)  {
	with (matchingDoor_)  {
		open = true;				
	}	
	image_index = 1;		
} else {
	with (matchingDoor_)  {
		open = false;				
	}	
	image_index = 0;
}