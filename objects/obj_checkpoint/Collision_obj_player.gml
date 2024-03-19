if (image_index == 1){
	exit;
}

image_index = 1;

ini_open("checkpoint.ini");

//ajouter les autres infos du joueur à sauvegarder ici
ini_write_real("player", "x", other.x);
ini_write_real("player", "y", other.y);

ini_close();