function move_player(player) {
    var key_up = keyboard_check(ord("W"));
	var key_down = keyboard_check(ord("S"));
	var key_left = keyboard_check(ord("A"));
	var key_right = keyboard_check(ord("D"));
	
	var move_vector = normalize_vector((key_right - key_left), (key_down - key_up));

	player.x += move_vector.x * player.move_speed;
	player.y += move_vector.y * player.move_speed;        
}