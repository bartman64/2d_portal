/// @description Falling State

if(speed_[v] >= max_fall_speed_){
	speed_[v] = max_fall_speed_;	
} else {
	speed_[v] += gravity_;
}
	image_speed = 0;
	image_index = 3;



