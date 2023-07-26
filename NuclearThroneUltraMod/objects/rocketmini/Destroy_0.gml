/// @description Small explosion
alarm[11] = 10;
event_inherited()
snd_play(sndExplosionS)
with instance_create(x+hspeed,y+vspeed,SmallExplosion)
{
	dmg = 4;	
}
