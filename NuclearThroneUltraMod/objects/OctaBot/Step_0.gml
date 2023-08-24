event_inherited()

if walk > 0 && alarm[2] < 1
{
walk -= 1
var accc = acc;
if UberCont.normalGameSpeed == 60
	accc *= 0.5;
motion_add(dir,accc)
}

if speed > maxSpeed
speed = maxSpeed

