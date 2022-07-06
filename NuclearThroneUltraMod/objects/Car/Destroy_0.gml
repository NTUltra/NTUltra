repeat(3)
instance_create(x+random(5)-2.5,y+random(5)-2.5,Explosion)

repeat(4)
instance_create(x+random(7)-3.5,y+random(7)-3.5,SmallExplosion)

//instance_create(x,y+6,Scorchmark)
event_inherited()

snd_play(sndExplosionCar)

