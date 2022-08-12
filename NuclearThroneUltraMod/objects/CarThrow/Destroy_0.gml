repeat(2)
instance_create(x+random(30)-15,y+random(30)-15,Explosion)

repeat(3)
instance_create(x+choose(random_range(8,16),random_range(-8,-16))
,y+choose(random_range(8,16),random_range(-8,-16)),SmallExplosion)

instance_create(x,y+6,Scorchmark)
event_inherited()

snd_play(sndExplosionCar)

