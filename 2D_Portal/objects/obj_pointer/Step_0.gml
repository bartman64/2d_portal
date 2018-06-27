/// @description 

var gun_direction = point_direction(obj_player.x, obj_player.y - spr_player.sprite_height/2, mouse_x, mouse_y);
var flipped = (mouse_x > obj_player.x) * 2 - 1;

x = obj_player.x - flipped*4
y = obj_player.y - sprite_height/2 +4;
image_angle = gun_direction;
