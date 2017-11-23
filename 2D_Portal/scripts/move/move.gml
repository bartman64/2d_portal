///@param speed
///@param bounce
var speed_ = argument0;

if place_meeting(x+speed_[h], y, obj_solid) {
	while !place_meeting(x + sign(speed_[h]), y, obj_solid) 
	{
		x += sign(speed_[h]);
	}
		speed_[@ h] = 0;
	
}
x += speed_[h];

if place_meeting(x, y+speed_[v], obj_solid) {
	while (!place_meeting(x, y + sign(speed_[v]), obj_solid))
	{
		y += sign(speed_[v]);
	}
	 if(!place_meeting(x, y + 1, obj_blue_portal) && 
!place_meeting(x, yprevious + speed_[v] , obj_blue_portal) && 
!place_meeting(x, y + 1, obj_orange_portal) &&
!place_meeting(x, yprevious + speed_[v] , obj_orange_portal)){
		speed_[@ v] = 0;
}
	
}
y += speed_[v];