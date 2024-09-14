/// @description Init

// Inherit the parent event
event_inherited();
accuracy = 1;
alarm[1] = 4;
longarms = 0;
cuts = [];
offsets = [];
cutLength = 0;
originalLifeTimeSpeed = 3;
if instance_exists(Player)
{
	longarms = (Player.skill_got[13]+Player.bettermelee);
	originalLifeTimeSpeed += longarms;
}
am = 6 + round(longarms);
step = 16 + longarms * 8;
lifeTimeSpeed = originalLifeTimeSpeed;
alarm[3] = 5;