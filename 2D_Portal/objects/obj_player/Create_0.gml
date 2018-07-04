/// @description Create variables
speed_ = [0, 0];
max_speed_ = 2;
gravity_ = .3;
acceleration_ = 1;
friction_ = .3;
jump_height_ = -4.5;
max_fall_speed_ = 30;
bullet_cooldown_ = room_speed/2;
pickup_cooldown_ = room_speed/4;
old_fallSpeed = 0;

alarm[0] = bullet_cooldown_;

//Scale variables

x_scale_ = image_xscale;
y_scale_ = image_yscale; 


hit_x_ = 0;
hit_y_ = 0;

wentThroughPortal = 0;

pickupItemId_ = "";

MOVEMENT_ = 0;
JUMPING_ = 1;
FALLING_ = 2;


instance_create_layer(x - 4, y - sprite_height/2 + 1, "item_layer", obj_pointer);
	
	



