event_inherited();
alarm[0] = 1
typ = 1 
visible=false;
aimed = false;
pierceWall = false;
step = 32;
if instance_exists(Player){
	if Player.ultra_got[16]//Melting doomed
		step = 24;
	if Player.ultra_got[74] && Player.altUltra
		pierceWall = true;
}