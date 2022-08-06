Sleep(100)
repeat(28)
instance_create(
x+choose(random_range(-10,-55),random_range(10,55)),
y+choose(random_range(-10,-55),random_range(10,55)),
Explosion)

repeat(16)
instance_create(
x+choose(random_range(-50,-65),random_range(50,65)),
y+choose(random_range(-50,-65),random_range(50,65)),
SmallExplosion)
snd_play(sndExplosionXL)

instance_destroy()

