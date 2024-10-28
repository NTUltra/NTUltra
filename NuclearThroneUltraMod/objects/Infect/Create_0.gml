var len = 24;
var ang = random(360);
repeat(12)
{
	with instance_create(x+lengthdir_x(len,ang),
		y+lengthdir_y(len,ang),Curse)
		{
			motion_add(ang,2);	
		}
	ang += 30;
}
ang += 15;
len = 4;
repeat(12)
{
	with instance_create(x+lengthdir_x(len,ang),
		y+lengthdir_y(len,ang),Curse)
		{
			motion_add(ang,3);	
		}
	ang += 30;
}
var ang = random(360)
BackCont.shake += 6;
with instance_create(x,y,BloodStreak)
{
	image_angle = ang
	speed += 4;
	direction = image_angle;
	sprite_index = sprInkBlobSplat;
}
with instance_create(x,y,BloodStreak)
{
	image_angle = ang + 120
	speed += 4;
	direction = image_angle;
	sprite_index = sprInkBlobSplat;
}
with instance_create(x,y,BloodStreak)
{
	image_angle = ang + 240
	speed += 4;
	direction = image_angle;
	sprite_index = sprInkBlobSplat;
}
snd_play(sndBlobExploS,0.01);
with instance_create(x,y,InkBlob)
{
	team = 2;
	speed = 0;
}
var dir = random(360);
repeat(5)
{
	with instance_create(x + lengthdir_x(24,dir),y + lengthdir_y(24,dir),InkBlob)
	{
		speed = 0;
		direction = dir;
		team = 2;
	}
	dir += 72;
}
repeat(6+irandom(6))
{
	with instance_create(x+lengthdir_x(10+irandom(24),random(360))+random(6)-3,y+lengthdir_y(10+irandom(24),random(360))+random(6)-3,GhostEffect)
		motion_add(random(360),0.5+random(4))
}
with instance_create(x,y,AnimDestroyTop)
{
	sprite_index = sprDoctorInfest;
	image_angle = random(360);
}
image_speed=0;
alarm[0]=10;
