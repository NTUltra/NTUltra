event_inherited();
alarm[0] = 1
typ = 1 
visible=false;
aimed = false;
dmg = 25;
pierceWall = false;
if instance_exists(Player){
	if Player.ultra_got[16]//Melting doomed
		dmg=35;
	if Player.ultra_got[74] && Player.altUltra
		pierceWall = true;
}