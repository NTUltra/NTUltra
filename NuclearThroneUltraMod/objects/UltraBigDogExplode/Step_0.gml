if random(8) < 1
{
snd_play(sndExplosionL)
instance_create(
x+choose(random_range(-16,-50),random_range(16,50)),
y+choose(random_range(-16,-50),random_range(16,50)),
GreenExplosion)
}


if random(8) < 1
{
snd_play(sndExplosion)
instance_create(
x+choose(random_range(30,-60),random_range(30,60)),
y+choose(random_range(-30,-60),random_range(30,70)),
Explosion)
}

