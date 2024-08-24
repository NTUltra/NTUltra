/// @description xxx

// Inherit the parent event
event_inherited();
alarm[0] = 80;
alarm[11] = 0;
friction = 0;
alarm[2] = 4;
alarm[3] = 4;
alarm[4] = 6;
rotation = choose(25,-25);
dmg = 2;
if instance_exists(Player) && Player.skill_got[17] = 1
{
	dmg = 3;	
}