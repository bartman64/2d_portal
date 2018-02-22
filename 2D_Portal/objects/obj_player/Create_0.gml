/// @description Create variables
speed_ = [0, 0];
max_speed_ = 2;
gravity_ = .3;
acceleration_ = 1;
friction_ = .3;
jump_height_ = -4.5;
max_fall_speed_ = 30;
bullet_cooldown_ = room_speed/2;
press_cooldown_ = room_speed/2;
old_fallSpeed = 0;

alarm[0] = bullet_cooldown_;

//Scale variables

x_scale_ = image_xscale;
y_scale_ = image_yscale; 


hit_x_ = 0;
hit_y_ = 0;

wentThroughPortal = 0;
