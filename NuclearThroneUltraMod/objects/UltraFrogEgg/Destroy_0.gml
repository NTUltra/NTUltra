if my_health<1
snd_play(sndFrogEggDead)

repeat(4)
{
	with instance_create(x,y,UltraToxicThrowerGas) {
		speed += 1;
	}
}
snd_play(sndToxicBoltGas);
