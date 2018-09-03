/// @description Getting thrown
if(mouse_x < x)
{
	move([-4,0]);
}else
{
	move([4,0]);
}

if(place_meeting(x, y+1, obj_solid))
{
	thrown_ = false;
}