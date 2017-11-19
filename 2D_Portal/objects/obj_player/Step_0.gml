/// @description 

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if hinput != 0 {
	speed_[h] += hinput*acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);

} else {
	speed_[h] = lerp(speed_[h], 0, friction_);

}

if !place_meeting(x, y+1, obj_solid) {
	speed_[v] += gravity_;

} else {
	if keyboard_check_pressed(vk_space) {
		speed_[v] = jump_height_;

	}
}
move(speed_);