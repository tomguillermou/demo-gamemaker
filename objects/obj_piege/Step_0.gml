/// @description Insert description here
// You can write your code in this editor


transition_timer = transition_timer - (delta_time / 1000);

if (transition_timer < 0) {
    transition_timer = 0;
}

if (state == 1 && transition_timer <= 0) {
    // Change to danger state after 1 second delay
    transition_timer = transition_delay; // Start timer for next state transition
    state = 2;
    // Add code here for any additional actions in the danger state
} else if (state == 2 && transition_timer <= 0) {
    // Change to danger state after 1 second delay
    transition_timer = transition_delay; // Start timer for next state transition
    state = 0;
    // Add code here for any additional actions in the danger state
}
// Update sprite based on state
switch (state) {
    case 0:
        sprite_index = sprite_inactive;
        break;
    case 1:
        sprite_index = sprite_warning;
        break;
    case 2:
        sprite_index = sprite_danger;
        break;
}



