/// @description Biger boom
if alarm[2] < 1
{
instance_create(x,y,Explosion);
snd_play(sndExplosion);
instance_destroy(id,false);
with other
{
	instance_destroy(id,false);	
}
BackCont.shake += 10;
Sleep(10);
}