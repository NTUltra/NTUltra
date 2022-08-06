if random(8) < 1
{
snd_play(sndExplosion)
instance_create(
x+choose(random_range(-8,-40),random_range(8,40)),
y+choose(random_range(-8,-40),random_range(8,40)),
Explosion)
}


if random(8) < 1
{
snd_play(sndExplosionS)
instance_create(
x+choose(random_range(20,-50),random_range(20,50)),
y+choose(random_range(-20,-60),random_range(20,50)),
SmallExplosion)
}

