var key_up = keyboard_check(ord("Z"));
var key_down = keyboard_check(ord("S"));
var key_left = keyboard_check(ord("Q"));
var key_right = keyboard_check(ord("D"));
var key_dash = mouse_check_button_pressed(mb_left);

if (key_dash && !is_dashing && dash_cooldown_timer = 0) {
	is_dashing = true;
	dash_duration_timer = dash_duration_in_steps;
	dash_cooldown_timer = dash_duration_in_steps + dash_cooldown_in_steps;
	
	dash_direction = normalize_vector((key_right - key_left), (key_down - key_up));
}

if (is_dashing) {
	x += dash_direction.x * dash_speed;
	y += dash_direction.y * dash_speed;	
	
	dash_duration_timer -= 1;

	if (dash_duration_timer = 0) {
		is_dashing = false;
	}
} else {
	var walk_direction = normalize_vector((key_right - key_left), (key_down - key_up));

	x += walk_direction.x * walk_speed;
	y += walk_direction.y * walk_speed; 
}

if (dash_cooldown_timer > 0) {
    dash_cooldown_timer -= 1;

	if (dash_cooldown_timer <= 0) {
		dash_cooldown_timer = 0;
	}
}
	


