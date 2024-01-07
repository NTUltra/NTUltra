/// @description Fire!
instance_destroy();
snd_play(sndLaser,0.01,true)
with instance_create(x,y,ScreenLaser)
{
	team = other.team;	
}