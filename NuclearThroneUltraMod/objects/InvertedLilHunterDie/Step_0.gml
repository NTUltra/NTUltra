
instance_create(x,y,Smoke)

if UberCont.normalGameSpeed == 60
{
	direction += trn*0.5;
	if abs(trn) < 20
		trn += random(0.5)-0.25
	if speed < 8
	{
		speed += 1.5
	}
}
else
{
	direction += trn
	if abs(trn) < 20
		trn += random(1)-0.5
	if speed < 8
	{
		speed += 3
	}
}
image_angle = direction-90