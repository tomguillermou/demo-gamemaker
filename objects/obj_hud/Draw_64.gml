/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Coordonnées et dimensions pour la jauge de peur
var block_width = 40;
var block_height = 20;
var block_spacing = 5; // Espace entre les blocs

// Calculez la largeur totale de la jauge de peur
var total_width = obj_player.max_fear * block_width + (obj_player.max_fear - 1) * block_spacing;

// Calculez la position x pour centrer la jauge de peur
var x_pos_fear = view_wport[0] / 2 - total_width / 2;
var y_pos_fear = 70; // Mettez cette valeur en dessous de la jauge de cooldown

// Dessinez la barre de peur
draw_set_color(c_purple); // Choisissez la couleur que vous voulez pour la barre de peur
for (var i = 0; i < obj_player.player_fear; i++) {
    draw_rectangle(x_pos_fear + i * (block_width + block_spacing), y_pos_fear, x_pos_fear + i * (block_width + block_spacing) + block_width, y_pos_fear + block_height, false);
}

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