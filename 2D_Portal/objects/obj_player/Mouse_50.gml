/// @description Create bullets

if(alarm[0] <= 0){
	var gun_direction = point_direction(x, y-sprite_height/2, mouse_x, mouse_y);
	var flipped = (mouse_x > x) * 2 - 1;
	var gun_x = x-4*flipped;
	var x_offset = lengthdir_x(32, gun_direction);
	var y_offset = lengthdir_y(32, gun_direction);

	var bullet = instance_create_layer(gun_x + x_offset, y-sprite_height/2 + 1 + y_offset, "Instances", obj_blue_bullet);
	bullet.direction = gun_direction;
	bullet.image_angle = gun_direction;
	alarm[0] = bullet_cooldown_;
}