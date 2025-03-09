/// @description Heavy damage!

// Inherit the parent event
event_inherited();
alarm[2] = 1;
image_speed = 0;
aimed = false;
col = c_yellow;
middleColour = c_white;
canDamage = true;
dmg = 8;
hitEntities = [];
width = 8;
borderWidth = 1;
knockback = 4;
middleColour = c_black;
boltMarrow = false;
timesDamage = 8;
accuracy = 1;
myPierce = noone;
endX = xstart;
endY = ystart;
splitX = x;
splitY = y;
targetX = x;
targetY = y;
myLine = [id];
original = id;
goTime = false;
lineIndex = 0;
theSpeed = 24;
passedPoint = false;
passedSplit = false;
jumps = 0;
image_speed = 0.4;
if instance_exists(Player) && Player.skill_got[21]
{
	accuracy = Player.accuracy;
	boltMarrow = true;	
}
canEnd = false;