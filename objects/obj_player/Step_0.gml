var key_dash = mouse_check_button_pressed(mb_left);

// Check if the player can dash. They can if the dash key is pressed, they are not currently dashing, and the dash cooldown timer is at 0
var can_dash = key_dash && !is_dashing && dash_cooldown_timer = 0;

// If the player can dash, start the dash
if (can_dash) {
	// Set the dashing flag to true 
	is_dashing = true;
	// Set the dash duration timer to the defined dash duration
	dash_duration_timer = DASH_DURATION_IN_STEPS;
	// Set the dash cooldown timer to the sum of the dash duration and the dash cooldown
	dash_cooldown_timer = DASH_DURATION_IN_STEPS + DASH_COOLDOWN_IN_STEPS;
	// Get the direction of the player's input for the dash direction
	dash_direction = get_player_input_direction();
}

// If the player is dashing
if (is_dashing) {
	// Set the move direction to the dash direction
	move_direction = dash_direction;
	// Set the move speed to the dash speed
	move_speed = DASH_SPEED;
	// Decrement the dash duration timer
	dash_duration_timer -= 1;

	// If the dash duration timer is 0, the player is no longer dashing
	if (dash_duration_timer = 0) {
		is_dashing = false;
	}
} else {
	// If the player is not dashing, set the move direction to the player's input direction
	move_direction = get_player_input_direction();
	move_speed = WALK_SPEED;
}
// Move the player in the move direction at the move speed
var move_x = move_direction.x * move_speed;
var move_y = move_direction.y * move_speed;

move_and_collide(move_x, move_y, obj_wall_parent);

// If the dash cooldown timer is greater than 0
if (dash_cooldown_timer > 0) {
	// Decrease the dash cooldown timer by 1
    dash_cooldown_timer -= 1;
	
	// If the dash cooldown timer is less than or equal to 0, set it to 0
	if (dash_cooldown_timer <= 0) {
		dash_cooldown_timer = 0;
	}
}
