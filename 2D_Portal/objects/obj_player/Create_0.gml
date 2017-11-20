/// @description Create variables
speed_ = [0, 0];
max_speed_ = 4;
gravity_ = .5;
acceleration_ = 1;
friction_ = .3;
jump_height_ = -10;
max_fall_speed_ = 20;
bullet_cooldown_ = room_speed/6;

alarm[0] = bullet_cooldown_;

//Scale variables

x_scale_ = image_xscale;
y_scale_ = image_yscale; 

hit_x_ = 0;
hit_y_ = 0;
