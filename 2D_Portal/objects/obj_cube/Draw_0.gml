/// @description Insert description here
// You can write your code in this editor

if(obj_player.holdingItem_) {
	draw_sprite_ext(spr_cube, image_index, obj_player.x, obj_player.y - (spr_player.sprite_height/2), 1, 1, 0, image_blend, image_alpha);
} else {
		draw_sprite_ext(spr_cube, image_index, x, y, 1, 1, 0, image_blend, image_alpha);
}