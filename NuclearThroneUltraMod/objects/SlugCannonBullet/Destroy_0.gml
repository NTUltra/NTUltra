var angstep = 360/bullets;
var ang = direction;
repeat(bullets)
{
	with instance_create(x,y,Slug)
	{motion_add(ang,15)
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
	}
	ang += angstep;
}
Sleep(30)
ang += angstep*0.5;
repeat(bullets)
{
	with instance_create(x,y,Smoke)
		motion_add(ang,random(3))
	
	ang += angstep;
}

BackCont.shake += 15
//snd_play(sndFlakExplode);
snd_play(sndSuperSlugger);