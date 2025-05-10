/// @description Init

// Inherit the parent event
event_inherited();
accuracy = 1;
alarm[1] = 4;
longarms = 0;
maxAmmo = 0;
if instance_exists(Player)
{
	longarms = (Player.skill_got[13]+Player.bettermelee);
	accuracy = Player.accuracy;
}
step = 14 + longarms * 9;