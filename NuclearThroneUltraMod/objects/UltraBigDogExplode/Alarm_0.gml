Sleep(100)
repeat(28)
instance_create(
x+choose(random_range(-20,-65),random_range(20,65)),
y+choose(random_range(-20,-65),random_range(20,65)),
GreenExplosion)

repeat(16)
instance_create(
x+choose(random_range(-60,-75),random_range(60,75)),
y+choose(random_range(-60,-75),random_range(60,75)),
Explosion)
snd_play(sndExplosionXL)

instance_destroy()

