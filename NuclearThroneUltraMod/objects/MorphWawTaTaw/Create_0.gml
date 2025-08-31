/// @description
// Inherit the parent event
event_inherited();
canBeAngled = false;
dmg = 12;
dmgBoost = 0;
lerpTime = 0;
lerpIncrease = 0.2;
endingBoost = 1.125;
lerpStart = 0;
lerpStarting = 0.7;
lerpStartingCircle = 0.6;
curveDetail = 0.05;//10 parts (10%)
widthScale = 4;
widthTimeScalar = 2;
widthReturnScalar = 0.75;
minWidth = 0.125;
myTarget = noone;
offsetX1 = x;
offsetY1 = y;
offsetX2 = x;
offsetY2 = y;
targetX = x;
targetY = y;
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
ending = 0;
camKick = 5;
camShake = 3;
wkick = 4;
mywep = 0;
offset = 8;
hit = [];
owner = -1;
pitch = 0;
alarm[1] = 2;
curveAmount = 38;
curveAmountIncrease = 7;
curveAmountDecrease = 13;
curvePart = 0.1;
curvePartIncrease = 0.2;
curvePartMax = 1.1;
curvePartMin = -0.1;
minCurveAmount = 10;
if instance_exists(Player)
{
	accuracy = Player.accuracy * 0.75;
	if Player.skill_got[17]
	{
		curvePartIncrease += 0.1;
		curveAmount += 9 + Player.betterlaserbrain;
		curveAmountIncrease += 1;
		curveAmountDecrease += 1;
		energyBrained = true;
		dmg += 1;
		minWidth *= 1.5;
		hueShift += 10;
		widthScale += 2;
		range += 10;
	}
}