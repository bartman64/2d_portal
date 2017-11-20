/// @description Sets orientation to the wall

if(other.x < x){
	h_orientation_ = right_open;	
} else {
	h_orientation_ = left_open;	
}


if(other.y < y){
	v_orientation_ = down_open;	
} else {
	v_orentation_ = up_open;	
}
