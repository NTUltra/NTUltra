event_inherited()





if speed>maxSpeed
speed=maxSpeed;


if speed<0.8 && idle
{
	idle=false;
if team != 2
	team = 0;
image_index=0;
snd_play(sndVanOpen);
meleedamage=0;
friction = 8;
}
/*
if (team == 0)
{
	if speed>4
		speed=4;	
}*/