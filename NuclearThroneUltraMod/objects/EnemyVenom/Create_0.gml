/// @description Init
event_inherited();
owner = noone;
team = 1;
dmg = 1;
rate = 30;
alarm[0] = rate;
venomized = false;//Wether or not its targeting player
maxDamage = 999;
hits = 0;
if instance_exists(Player) && Player.ultra_got[39]
{
	maxDamage = 3;	
}