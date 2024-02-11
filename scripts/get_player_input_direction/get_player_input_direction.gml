function get_player_input_direction(){
	var key_up = keyboard_check(ord("Z"));
	var key_down = keyboard_check(ord("S"));
	var key_left = keyboard_check(ord("Q"));
	var key_right = keyboard_check(ord("D"));

	var move_x = (key_right - key_left);
	var move_y = (key_down - key_up);
	
	return normalize_vector(move_x, move_y);
}