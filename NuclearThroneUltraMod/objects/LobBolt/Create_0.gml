/// @description Init

// Inherit the parent event
event_inherited();

yOffset = 0;
targetX = x;
targetY = y;
time = random(-0.06);
timeIncrease = 0.04 + random(0.03);
if instance_exists(Player) && Player.skill_got[21]
{
	timeIncrease += 0.08;
}
type = 6;
image_speed = 1;
apex = random_range(-200,-250);
targetAngle = 270 + random_range(5,-5);
baseAngle = 90 + random_range(5,-5);
xprev = x;
yprev = y;
trailScale = 1;
trailColour = c_white;