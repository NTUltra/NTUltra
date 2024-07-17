event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
ignoreMe = noone
friction = 0.8
dmg = 2;
dmgReduc = 1;
alarm[0] = 1;
alarm[1] = 3;
if instance_exists(Player){
	if Player.ultra_got[16]//Melting doomed
	{
		dmg = 4;
		dmgReduc = 2;
		alarm[1] += 2;
	}
	if Player.ultra_got[74] && Player.altUltra
	{
		alarm[0] = 0;
		alarm[1] = 0;
		friction -= 0.2;
	}
}
alarm[11] = 1;