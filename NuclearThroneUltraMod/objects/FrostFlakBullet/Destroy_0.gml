var ang = direction;
var angStep = 360/bullets;
repeat(bullets)
{
with instance_create(x,y,FreezeBullet)
{
	motion_add(ang,16)
	image_angle = direction
	team = other.team
}
ang += angStep;
}
Sleep(20)
ang += angStep*0.5;
repeat(bullets)
{
with instance_create(x,y,Dust)
	motion_add(random(360),random(3))

ang += angStep;
}
snd_play(sndFlakExplode);
BackCont.shake += 8

