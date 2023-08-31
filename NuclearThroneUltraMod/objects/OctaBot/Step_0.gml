event_inherited()

if walk > 0 && alarm[2] < 1 && alarm[3] < 1
{
walk -= 1
var accc = acc;
if UberCont.normalGameSpeed == 60
	accc *= 0.5;
motion_add(moveDir,accc)
}

if speed > maxSpeed
speed = maxSpeed

