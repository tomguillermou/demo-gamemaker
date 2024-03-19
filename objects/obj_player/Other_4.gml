if (file_exists("checkpoint.ini")){
	ini_open("checkpoint.ini");
	//ajouter les autres variables à save ici
	x = ini_read_real("player", "x", x);
	y = ini_read_real("player", "y", y);
	
	ini_close();
	
}
	