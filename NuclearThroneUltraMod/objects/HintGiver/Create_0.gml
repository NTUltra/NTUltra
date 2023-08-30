spr_idle = sprHintGiverNPCIdle
spr_activate = sprHintGiverNPCAppear
spr_deactivate = sprHintGiverNPCDisappear
image_speed = 0;
active = false;
name = "LISTEN?";
hint = choose(
"SLOWLY CHOOSE YOUR DESTINY",//SLOTH
"FREEDOM FOR THOSE\nWHO WIELD EXPLOSIVE POWER",//FREEDOM
"ENERGY RESULTS IN ENERGY",//ENERGY
"MORPH AND DANCE",//DISCO
"BLOOD TO APOCALYPSE",//APOCALYPSE
"MODIFY FOR PURITY",//PURITY
"DAILY MERCENARY\nPUTS A BOUNTY ON ROYALTY",//BOUNTY
"RICHES FOR THE LUCKY",//CROWN OF MISFORTUNE 
"REPEAT YOUR LINEAGE",//ECHO
"RUSH TO TAKE YOUR TIME");//TIME
owner = noone;
alarm[4] = 30;
alarm[1] = 120;
hasASecret = false;
hasCurse = false;
if scrHasASecretCrown()
{
	hasASecret = true;
	hint = "WANT ME TO CURSE YOUR WEAPON?";
	if (Player.curse == 1 && (Player.bcurse == 1 || Player.curse == 1))
	{
		hasCurse = true;
		hint = "I CAN MAKE THIS WEAPON\nPERMANENTLY COME WITH YOU\nTHROUGH PORTALS";
	}
}