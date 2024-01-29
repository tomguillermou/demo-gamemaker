var dash_pressed = keyboard_check(vk_space);
var can_dash = !is_dashing && dash_cooldown_timer = 0;

if (dash_pressed && can_dash) {
	is_dashing = true
	dash_duration_timer = dash_duration_in_steps
	dash_cooldown_timer = dash_duration_in_steps + dash_cooldown_in_steps
	move_speed = dash_speed
}

if (is_dashing) {
	dash_duration_timer -= 1;

	if (dash_duration_timer = 0) {
		is_dashing = false
		move_speed = walk_speed
	}
}

if (dash_cooldown_timer > 0) {
    dash_cooldown_timer -= 1;

	if (dash_cooldown_timer <= 0) {
		dash_cooldown_timer = 0;
	}
}

move_player(obj_player)

