/// @description Init
event_inherited();
team = 1;
ammo = 4;
maxammo = 4;
time = 3;
step = 16;
if instance_exists(Player)
{
	step *= Player.accuracy;	
}
distance = step;
alarm[0] = 1;