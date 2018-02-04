/// @description Insert description here
// You can write your code in this editor


if(!place_meeting(x,y+1,obj_solid)){
	if(speed_[v] >= max_fall_speed_){
		speed_[v] = max_fall_speed_;	
	} else {
		speed_[v] += gravity_;
	}
	
}

move(speed_);