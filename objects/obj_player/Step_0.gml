
var key_dash = mouse_check_button_pressed(mb_left);

var can_dash = key_dash && !is_dashing && dash_cooldown_timer = 0;

if (can_dash) {
	is_dashing = true;
	dash_duration_timer = DASH_DURATION_IN_STEPS;
	dash_cooldown_timer = DASH_DURATION_IN_STEPS + DASH_COOLDOWN_IN_STEPS;
	dash_direction = get_player_input_direction();
}

if (is_dashing) {
	move_direction = dash_direction;
	move_speed = DASH_SPEED;

	dash_duration_timer -= 1;

	if (dash_duration_timer = 0) {
		is_dashing = false;
	}
} else {
	move_direction = get_player_input_direction();
	move_speed = WALK_SPEED;
}

var move_x = move_direction.x * move_speed;
var move_y = move_direction.y * move_speed;

move_and_collide(move_x, move_y, obj_wall);

if (dash_cooldown_timer > 0) {
    dash_cooldown_timer -= 1;

	if (dash_cooldown_timer <= 0) {
		dash_cooldown_timer = 0;
	}
}
