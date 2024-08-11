lastlvl = 1;

ini_open("Settings/file.ini");
lvl = ini_read_real( "STATE", "lastlvl", 1);
ini_close();
lastlvl = lvl;