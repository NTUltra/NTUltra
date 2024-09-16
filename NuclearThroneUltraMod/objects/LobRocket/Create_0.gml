/// @description Init

// Inherit the parent event
event_inherited();

yOffset = 0;
originalTargetX = x;
originalTargetY = y;
targetX = x;
targetY = y;
time = random(-0.06);
timeIncrease = 0.03 + random(0.02);
wavey = random_range(12,20);
waveyStrength = random_range(13,18);
isSin = choose(true,false);
type = 6;
image_speed = 1;
apex = random_range(-200,-250);
targetAngle = 270 + random_range(5,-5);
baseAngle = 90 + random_range(5,-5);
xprev = x;
yprev = y;
accuracy = 0.75;
if instance_exists(Player) && Player.skill_got[19]
	accuracy = 1;
alarm[1] = 1;