instance_create(x+random(128-(rr*0.25))-64-(rr*0.125),y+random(128-(rr*0.25))-64-(rr*0.125),explo)

if alarm[0] < 90
if random(2) < 1
{
instance_create(x+random(128-(rr*0.25))-64-(rr*0.125),y+random(128-(rr*0.25))-64-(rr*0.125),explo)
}
if alarm[0] < 70
{
	if random(2) < 1
	{
	instance_create(x+random(200-(rr*0.25))-100-(rr*0.125),y+random(300-(rr*0.25))-150-(rr*0.125),explo)
	}
	instance_create(x+random(200-(rr*0.25))-100-(rr*0.125),y+random(300-(rr*0.25))-150-(rr*0.125),explo)
}

alarm[2] = 1;