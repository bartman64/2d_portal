/// @description Destroy bullet

// x coordinate of the collided block
var solid_x;

// y coordinate of the collided block
var solid_y;

/* This variable is the distances from the 
 * middle point of the solid block to the border
 */
var box_border_offset;

//Getting the x, y coordinate and box offset of the solid_obj
with(other){
	solid_x = x;
	solid_y = y;
	box_border_offset = sprite_height/2
	
}
//boolean variable indicating if the y coordinate of the bullet is between the lowest and highest point of the solid_obj
var collisionBetweenBoxCorners_height = (y > solid_y - box_border_offset || y < solid_y + box_border_offset);

//boolean varialbe indicatinf if the x coordinate of the bullet is between the farest left and right point of the sold_obj
var collisionBetweenBoxCorners_width = (x > solid_x - box_border_offset || x < solid_x  + box_border_offset);

//The if cascade checks on which side of the obj_solid the bullet collided to determen the position of the portal
if (x < solid_x - box_border_offset &&  collisionBetweenBoxCorners_height)
{
	with(other){	
		obj_player.hit_x_ = x - box_border_offset;
		obj_player.hit_y_ = y		
	}	
}

else if (y > solid_y + box_border_offset && collisionBetweenBoxCorners_width)
{
	with(other){
		obj_player.hit_x_ = x ;
		obj_player.hit_y_ = y + box_border_offset
	}	
	portal_orientation = 90;
}

else if (x > solid_x + box_border_offset && collisionBetweenBoxCorners_height)
{	
	with(other){
		obj_player.hit_x_ = x + box_border_offset;
		obj_player.hit_y_= y
	}	
}

else if (y < solid_y  - box_border_offset && collisionBetweenBoxCorners_width)
{
	with(other){
		obj_player.hit_x_ = x ;
		obj_player.hit_y_ = y - box_border_offset;
	}		
	portal_orientation = 90;
}

instance_destroy();