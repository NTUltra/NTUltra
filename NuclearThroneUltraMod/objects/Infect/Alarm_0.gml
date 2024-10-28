instance_destroy();
snd_play(sndTermite,0.2);
with instance_create(x,y,Termite)
{
	motion_add(random(360),3)
	team = 2;
}