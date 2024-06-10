// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations

// function move_towards_direction(axis, next_pos, obj) {
//     if (!place_meeting(x + (axis == "x" ? sign(next_pos - x) : 0), y + (axis == "y" ? sign(next_pos - y) : 0), obj)) {
//         while (!place_meeting(x + (axis == "x" ? sign(next_pos - x) : 0), y + (axis == "y" ? sign(next_pos - y) : 0), obj) && abs((axis == "x" ? x : y) - next_pos) > 1) {
//             if (axis == "x") {
//                 x += sign(next_pos - x);
//             } else {
//                 y += sign(next_pos - y);
//             }
//         }
//     }
// }

function move_towards_direction(axis, next_pos, obj) {
    var collision = instance_place(x + (axis == "x" ? sign(next_pos - x) : 0), y + (axis == "y" ? sign(next_pos - y) : 0), obj);
    if (!collision) {
        while (!place_meeting(x + (axis == "x" ? sign(next_pos - x) : 0), y + (axis == "y" ? sign(next_pos - y) : 0), obj) && abs((axis == "x" ? x : y) - next_pos) > 1) {
            if (axis == "x") {
                x += sign(next_pos - x);
            } else {
                y += sign(next_pos - y);
            }
        }
    }
    return collision;
}