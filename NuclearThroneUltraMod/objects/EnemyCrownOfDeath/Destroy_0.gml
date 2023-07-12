/// @description Dead
event_inherited();
snd_play(sndCrownDeath);

with instance_create(x,y,CrownOfDeathBoom)
{
	dis = 8;
	disStep = 24;
	alarm[0] = 30;
}