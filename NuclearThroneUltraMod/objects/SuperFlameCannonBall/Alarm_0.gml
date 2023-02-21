/// @description Fire
alarm[0]=1;
image_angle+=8;
BackCont.shake += 2
repeat(2) {
	with instance_create(x,y,Flame)
	{
		motion_add(other.image_angle+90+random(10)-5,2+random(4))
		team = other.team
	}
	with instance_create(x,y,Flame)
	{
		motion_add(other.image_angle+270+random(10)-5,2+random(4))
		team = other.team
	}
}

with instance_create(x,y,Flame)
{
	motion_add(other.image_angle,6+random(3))
	team = other.team
}
with instance_create(x,y,Flame)
{
	motion_add(other.image_angle+180,6+random(3))
	team = other.team
}