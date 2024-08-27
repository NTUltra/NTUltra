if alarm[1] > 0
	exit;
if other.isGrenade
{
	BackCont.shake += 2;
	snd_play(sndRicochet,0.1,true);
	with other
		scrDeflectNade(direction + 180);
}
else if team != other.team
{
	if other.typ == 1
	{
		other.team = team
		BackCont.shake += 2;
		snd_play(sndRicochet,0.1,true);
		other.direction += 180;
		other. speed = min(24,other.speed + 8);
		other.image_angle = other.direction
		with instance_create(other.x,other.y,Deflect)
			image_angle = other.direction
		//Deflect sprite
		with other
			event_user(15);
	}
	else if other.typ == 3
	{
		snd_play(sndProjectileDestroy,0.1,true);
			BackCont.shake += 2;
		with other
			instance_destroy()
	}
	else if other.typ == 2
	{
		snd_play(sndProjectileDestroy,0.1,true);
		BackCont.shake += 1;
		with other
			instance_destroy()
	}
}

