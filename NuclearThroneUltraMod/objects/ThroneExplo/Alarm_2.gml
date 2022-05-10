instance_create(x+random(128)-64,y+random(128)-64,explo)

if alarm[0] < 90
if random(2) < 1
{
instance_create(x+random(128)-64,y+random(128)-64,explo)
}
if alarm[0] < 70
{
	if random(2) < 1
	{
	instance_create(x+random(200)-100,y+random(300)-150,explo)
	}
	instance_create(x+random(200)-100,y+random(300)-150,explo)
}

alarm[2] = 1;