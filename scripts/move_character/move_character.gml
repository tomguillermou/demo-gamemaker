// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function move_character(direction, speed){
    var next_x = x + direction.x * speed;
    var next_y = y + direction.y * speed;

    // Move along the x-axis
    while (!place_meeting(x + sign(direction.x), y, obj_wall) && ((direction.x > 0 && x < next_x) || (direction.x < 0 && x > next_x))) {
        x += sign(direction.x);
    }

    // Move along the y-axis
    while (!place_meeting(x, y + sign(direction.y), obj_wall) && ((direction.y > 0 && y < next_y) || (direction.y < 0 && y > next_y))) {
        y += sign(direction.y);
    }
}
