/// @description Init
target = -1;
pushStrength = 70;
pushSpeed = 15;
lerpTime = 1;
lerpCalc = 0.15;
lerpCalcBack = 0.15;
if instance_exists(Player) && Player.skill_got[5]
{
	pushSpeed += 4;
	pushStrength += 10;
	lerpCalc -= 0.01;
	lerpCalcBack -= 0.01;
}