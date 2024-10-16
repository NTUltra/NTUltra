alarm[0]=2;
angle+=10;

BackCont.shake += 1

repeat(1+irandom(2))
{
	with instance_create(x,y,AcidStreak)
	{
		image_angle = random(360)
		motion_add(image_angle,5);
	}
}


repeat(2){
with instance_create(x,y,ToxicThrowerGas)
{
	motion_add(other.angle+random(10)-5,2)
	motion_add(other.direction,2.2);
}


with instance_create(x,y,ToxicThrowerGas)
{
	motion_add(other.angle+180+random(10)-5,2)
	motion_add(other.direction,2.2);
}
}
//}

