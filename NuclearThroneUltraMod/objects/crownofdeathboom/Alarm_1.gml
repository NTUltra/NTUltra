/// @description Explosions
alarm[1] = 9;
snd_play(sndExplosionXL);
instance_create(x,y,GreenExplosion);
am = 3;
amPlus = 4;
dis = 32;
disPlus = 32;
rings = 4;
if alarm[0] < 10
{
	boom = GreenExplosion;
	rings = 8;
}
	
event_perform(ev_alarm,2);