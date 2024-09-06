/// @description Init

// Inherit the parent event
event_inherited();
accuracy = 1;
alarm[1] = 1;
longarms = 0;
cuts = [];
offsets = [];
cutLength = 0;
step = 24 + longarms * 6;
am = 10 + round(longarms);
originalLifeTimeSpeed = 3;
if instance_exists(Player) && team == 2
{
	longarms = Player.skill_got[13]+bettermelee;
	originalLifeTimeSpeed += longarms;
}
lifeTimeSpeed = originalLifeTimeSpeed;