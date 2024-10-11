event_inherited();
alarm[0] = 1
typ = 1 
ShotgunShouldersType();
visible=false;
aimed = false;
dmg = 30;
range = 32;
if instance_exists(Player) && Player.skill_got[15]
	range += 16;