WALK_SPEED = 4;

DASH_SPEED = 12;
DASH_DURATION_IN_STEPS = 12;
DASH_COOLDOWN_IN_STEPS = 30;
MAX_FEAR=5;

NO_MOVE_DIRECTION = { x: 0, y: 0 };

// Runtime variables
move_speed = WALK_SPEED;
move_direction = NO_MOVE_DIRECTION;

player_fear = 3;
max_fear = MAX_FEAR;
is_dashing = false;
dash_duration_timer = 0;
dash_cooldown_timer = 0;
dash_direction = NO_MOVE_DIRECTION;