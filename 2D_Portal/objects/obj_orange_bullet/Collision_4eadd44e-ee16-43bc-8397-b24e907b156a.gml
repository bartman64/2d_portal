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
	solid_x = x + sprite_height/2;
	show_debug_message(x);
	show_debug_message(solid_x);
	solid_y = y + sprite_height/2;
	box_border_offset = sprite_height/2;
	show_debug_message(y);
	show_debug_message(solid_y);
	
}
 
//boolean variable indicating if the y coordinate of the bullet is between the lowest and highest point of the solid_obj
var collisionBetweenBoxCorners_height = (round(y) > solid_y - box_border_offset && round(y) < solid_y + box_border_offset);

//boolean varialbe indicatinf if the x coordinate of the bullet is between the farest left and right point of the sold_obj
var collisionBetweenBoxCorners_width = (round(x) > solid_x - box_border_offset && round(x) < solid_x  + box_border_offset);

//The if cascade checks on which side of the obj_solid the bullet collided to determen the position of the portal
if (round(x) < (solid_x - box_border_offset) && collisionBetweenBoxCorners_height)
{
	with(other){	
		obj_player.hit_x_ = x - box_border_offset;
		obj_player.hit_y_ = y;		
	}	
	portal_orientation = 0;
}

 if (round(y) > (solid_y + box_border_offset) && collisionBetweenBoxCorners_width )
{
	with(other){
		obj_player.hit_x_ = x ;
		obj_player.hit_y_ = y + box_border_offset;
	}	
	portal_orientation = 90;
}

if (round(x) > (solid_x + box_border_offset) && collisionBetweenBoxCorners_height)
{	
	with(other){
		obj_player.hit_x_ = x + box_border_offset;
		obj_player.hit_y_ = y;
	}	
	portal_orientation = 0;
}

if (round(y) < (solid_y  - box_border_offset) && collisionBetweenBoxCorners_width){
	with(other){
		obj_player.hit_x_ = x ;
		obj_player.hit_y_ = y - box_border_offset;
	}		
	portal_orientation = 90;

}

obj_player.hit_x_  += 16;
obj_player.hit_y_  += 16;

show_debug_message(obj_player.hit_x_);
show_debug_message(obj_player.hit_y_);

instance_destroy();