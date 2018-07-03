/// @description Insert description here
// You can write your code in this editor

// You can write your code in this editor

var matchingDispenser = "";

var pressedButton = instance_;
var i;
for (i = 0; i < instance_number(obj_cubePipe); i += 1){
	var dispenser_instance = instance_find(obj_cubePipe,i);
	with (dispenser_instance)  {
			if(dispenserName_ == pressedButton){
				matchingDispenser = dispenser_instance;	
			}
	}	
}

var setImpuls_trigger = impulse_trigger;
var setAlwaysOn_trigger = alwaysOn_trigger;


if(alarm[0] <= 0){
	if(keyboard_check_pressed(ord("E"))){
		with (matchingDispenser) {
				impulse_ = setImpuls_trigger;
				alwaysOn_ = setAlwaysOn_trigger;
		} 
		alarm[0] = press_cooldown_;
	}
}