/// @description draw the gun

var gun_direction = point_direction(x, y-sprite_height/2, mouse_x, mouse_y);
var flipped = (mouse_x > x) * 2 - 1;

//draw player

draw_sprite_ext(spr_player, image_index, x, ceil(y), x_scale_ * flipped, y_scale_, 0, image_blend, image_alpha);

//draw gun
//draw_sprite_ext(spr_gun, 0, x - flipped*4, y - sprite_height/2 + 1, 1, flipped, gun_direction, image_blend, image_alpha);
