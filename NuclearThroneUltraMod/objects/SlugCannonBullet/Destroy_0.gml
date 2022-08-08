var angstep = 360/bullets;
var ang = direction;
repeat(bullets)
{
	with instance_create(x,y,Slug)
	{motion_add(ang,15)
	image_angle = direction
	team = other.team
	scrBoostProjectileSpeed();
	}
	ang += angstep;
}
Sleep(30)

repeat(6)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}

BackCont.shake += 15
//snd_play(sndFlakExplode);
snd_play(sndSuperSlugger);