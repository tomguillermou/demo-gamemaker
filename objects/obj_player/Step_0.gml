// Check if the left mouse button is pressed
var key_dash = mouse_check_button_pressed(mb_left);
var restart = keyboard_check(vk_f10);

if (restart){
    //file_delete("checkpoint.ini");
    room_restart();
}

// Handle dashing
if (is_dashing) {
    // Set the move direction to the dash direction and speed to the dash speed
    move_direction = dash_direction;
    move_speed = DASH_SPEED;

    // Decrement the dash duration timer
    dash_duration_timer -= 1;

    // If the dash duration timer is 0, the player is no longer dashing
    if (dash_duration_timer == 0) {
        is_dashing = false;
    }
} else {
    // If the player is not dashing, set the move direction to the player's input direction and speed to the walk speed
    move_direction = get_player_input_direction();
    move_speed = WALK_SPEED;
}

// Move the player in the move direction at the move speed
var move_x = move_direction.x * move_speed;
var move_y = move_direction.y * move_speed;

// Check for collisions with walls and move the player
move_and_collide(move_x, move_y, obj_wall);

// Handle dash cooldown
if (dash_cooldown_timer > 0) {
    // Decrease the dash cooldown timer by 1
    dash_cooldown_timer -= 1;
}

var lantern = instance_nearest(x, y, obj_lantern);
var isNotInsideLanternLight = !(lantern != noone && distance_to_object(lantern) <= lantern.light_radius);
var isDashAvailable = !is_dashing && key_dash && dash_cooldown_timer == 0;

// If the player is not dashing and the dash key is pressed, start the dash
if (isDashAvailable && isNotInsideLanternLight ) {
    // Set the dashing flag to true 
    is_dashing = true;

    // Set the dash duration timer to the defined dash duration
    dash_duration_timer = DASH_DURATION_IN_STEPS;

    // Set the dash cooldown timer to the sum of the dash duration and the dash cooldown
    dash_cooldown_timer = DASH_DURATION_IN_STEPS + DASH_COOLDOWN_IN_STEPS;

    // Get the direction of the player's input for the dash direction
    dash_direction = get_player_input_direction();
}
