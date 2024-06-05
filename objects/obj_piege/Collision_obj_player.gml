/// Collision Event with Player
if (state == 0 && transition_timer <= 0) {
    // Change to warning state after 1 second delay
    transition_timer = transition_delay; // Start timer for next state transition
    state = 1;
}