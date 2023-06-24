
instance_create(x,y,Smoke)

image_angle = direction-90

if UberCont.normalGameSpeed == 60
{
	direction += trn*0.5;
	trn += random(0.5)-0.25
	
	if speed < 6 &&  alarm[2]<1
	{
		speed += 1.25
	}
}
else
{
	direction += trn
	trn += random(1)-0.5
	if speed < 6 &&  alarm[2]<1
	{
		speed += 2.05
	}
}



