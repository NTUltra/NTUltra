event_inherited();
friction = 0.1
alarm[1] = 6
alarm[0] = 30
isGrenade = true;
offx = random(2)-1
offy = random(2)-1
sticky = 0;
canExplodeBlade = false;
gotHit = false;
typ = 1 
dmg = 10;
alarm[2] = 1;
if instance_exists(Player){
	if Player.ultra_got[16]//Melting doomed
		dmg=12;
	if Player.ultra_got[74] && Player.altUltra
		alarm[2] = 0;
}