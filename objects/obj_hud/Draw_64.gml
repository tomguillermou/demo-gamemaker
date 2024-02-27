/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Draw GUI Event de obj_HUD

// Coordonnées où la barre de peur sera dessinée, relative à la fenêtre de jeu
var x_pos = 10;
var y_pos = 10;
var bar_width = 200;
var bar_height = 20;

// Calculez la largeur actuelle de la barre de vie en fonction de la santé du joueur
var fear_percentage = obj_player.player_fear / obj_player.max_fear;
var current_bar_width = bar_width * fear_percentage;

// Dessinez le fond de la barre de vie
draw_set_color(c_gray);
draw_rectangle(x_pos, y_pos, x_pos + bar_width, y_pos + bar_height, false);

// Dessinez la barre de vie actuelle
draw_set_color(c_red);
draw_rectangle(x_pos, y_pos, x_pos + current_bar_width, y_pos + bar_height, false);

// Réinitialisez la couleur de dessin pour les autres éléments GUI
draw_set_color(c_white);

// Coordonnées et dimensions pour la jauge de cooldown du dash
var x_pos = 10;
var y_pos = 40; // Mettez cette valeur en dessous de la barre de vie
var gauge_width = 200;
var gauge_height = 10;

var cooldown_percentage = obj_player.dash_cooldown_timer / obj_player.DASH_COOLDOWN_IN_STEPS;
var current_gauge_width = gauge_width * (1 - cooldown_percentage); // Inverser le remplissage

// Dessinez le fond de la jauge
draw_set_color(c_black);
draw_rectangle(x_pos, y_pos, x_pos + gauge_width, y_pos + gauge_height, false);

// Dessinez la jauge de cooldown actuelle
draw_set_color(c_green);
draw_rectangle(x_pos, y_pos, x_pos + current_gauge_width, y_pos + gauge_height, false);
    
// Réinitialisez la couleur de dessin pour les autres éléments GUI
draw_set_color(c_white);

draw_text(10, 10, string(current_gauge_width));
draw_text(10, 40, string(cooldown_percentage));


