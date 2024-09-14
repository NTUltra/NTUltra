/// @description Init

// Inherit the parent event
event_inherited();
accuracy = 1;
alarm[1] = 4;
longarms = 0;
cuts = [];
offsets = [];
cutLength = 0;
offsetStep = 12;
originalLifeTimeSpeed = 2;
if instance_exists(Player)
{
	longarms = (Player.skill_got[13]+Player.bettermelee);
	originalLifeTimeSpeed += longarms;
	offsetStep += longarms;
	offsetStep *= Player.accuracy;
}
am = 3 + round(longarms);
step = 20 + longarms * 9;
maxOffset = offsetStep * am;
lifeTimeSpeed = originalLifeTimeSpeed;
alarm[3] = 5;