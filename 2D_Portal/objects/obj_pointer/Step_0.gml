/// @description 

var gun_direction = point_direction(obj_player.x, obj_player.y - spr_player.sprite_height/2, mouse_x, mouse_y);

	var radiant = gun_direction * (pi/180);
	x = obj_player.x + (29 * cos(radiant));
	y = (obj_player.y - (sprite_height/2 + 4)) - (29 * sin(radiant));
image_angle = gun_direction;
