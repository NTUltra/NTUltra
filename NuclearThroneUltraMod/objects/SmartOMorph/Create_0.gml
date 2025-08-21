/// @description
// Inherit the parent event
event_inherited();
dmg = 20;
dmgBoost = 0;
lerpTime = 0;
lerpIncrease = 0.2;
endingBoost = 1.5;
lerpStart = 0;
lerpStarting = 0.7;
lerpStartingCircle = 0.6;
curveDetail = 0.05;//10 parts (10%)
widthScale = 4;
widthTimeScalar = 2;
widthReturnScalar = 0.75;
minWidth = 0.125;
myTarget = noone;
offsetX = x;
offsetY = y;
targetX = x;
targetY = y;
curveDirection = choose(90,-90);
curveAmount = 0.125 + random(1.125);
dealtDamage = false;
hue = irandom(255);
hueShift = 20;
hueWithinShift = 150;//Hue range of the beam itself
colour = make_colour_hsv(hue,255,255);
followMouse = false;
accuracy = 0.75;
energyBrained = false;
range = 24;
homeDirection = direction;
if instance_exists(Player)
{
	accuracy = Player.accuracy * 0.75;
	if Player.skill_got[19]
	{
		lerpIncrease += 0.1;
		endingBoost += 0.5;
		lerpStarting -= 0.1;
	}
	if Player.skill_got[17]
	{
		energyBrained = true;
		dmg += 6;
		minWidth *= 1.5;
		hueShift += 10;
		widthScale += 2;
		range += 10;
	}
}