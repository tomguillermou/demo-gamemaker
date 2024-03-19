/// @description Insert description here
// You can write your code in this editor

time = 2
timer = time
TRAP_ACCTIVATION_TIME_MS = 1;
TRAP_ACCTIVATION_DURATION_MS = 2;
trap_activation_timer = 0;
trap_duration_timer = 0;
trap_cooldown_timer = 0;
is_active = false;
can_activate = true;
alarm[0] = timer

state = 0; // 0: Inactive, 1: Warning, 2: Danger
sprite_inactive = spr_piege_inac; // Set the sprite for the inactive state
sprite_warning = spr_piege_pre; // Set the sprite for the warning state
sprite_danger = spr_piege_ac; // Set the sprite for the danger state
transition_timer = 0; // Timer to track phase transitions
transition_delay = 1000; // 1 second delay in milliseconds