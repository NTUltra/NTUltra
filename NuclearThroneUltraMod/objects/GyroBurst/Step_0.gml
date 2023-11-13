if sprite_index=sprGyroBurst
instance_create(x,y,DiscTrail)

speed+=0.4;

if speed>4
speed=4;

reload--;

if alarm[0]>0&&reload<1
{
	reload=2;
	ang+=12;

	with instance_create(x,y,Shell)
	motion_add(other.ang*100+random(50)-25,2+random(2))

	with instance_create(x,y+16,proj)
	{motion_add(other.ang+(random(8)-4),other.pSpeed)
	image_angle = direction
	team = other.team

	if random(4)<3
	norecycle=true;

	}

	var a = ang + 180;
	with instance_create(x,y,Shell)
	motion_add(a*100+random(50)-25,2+random(2))

	with instance_create(x,y+16,proj)
	{motion_add(a+(random(8)-4),other.pSpeed)
	image_angle = direction
	team = other.team

	if random(4)<3
	norecycle=true;

	}

}

if place_meeting(x,y,Wall)
{
timeinwall++;
if timeinwall>30
instance_create(x,y,WallBreak);
instance_create(x+8,y+8,WallBreak);
instance_create(x-8,y-8,WallBreak);
}
else
timeinwall=0;

