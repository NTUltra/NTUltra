if my_health<1
snd_play(sndFrogEggDead)

if team == 2
{
	repeat(4)
	instance_create(x,y,ToxicThrowerGas)

	snd_play(sndToxicBoltGas);
}
else
{
	scrDrop(80,0);
}
event_inherited();