// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
// function check_collision(axis, next_pos, obj) {
//     return place_meeting(x + (axis == "x" ? sign(next_pos - x) : 0), y + (axis == "y" ? sign(next_pos - y) : 0), obj);
// }

function check_collision(obj,x,y) {
    var collided_instance = instance_place(x, y, all);
    if (collided_instance != noone) {
        return collided_instance;
    } else {
        return noone;
    }
}