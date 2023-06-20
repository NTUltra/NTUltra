maxhealth = 1
mySize = 1

event_inherited()

spr_idle = sprGuardianStatue
spr_hurt = sprTorchHurt
spr_dead = sprTorchDead


snd_hurt = sndHitRock


instance_create(x-16,y-16,Floor)


if random(4) < 3
instance_create(x-16-32,y-16-32,Floor)

if random(4) < 3
instance_create(x-16+32,y-16+32,Floor)

if random(4) < 3
instance_create(x-16-32,y-16+32,Floor)

if random(4) < 3
instance_create(x-16+32,y-16-32,Floor)

instance_create(x-16-64,y-16,Floor)
instance_create(x-16-64,y-16-32,Floor)
instance_create(x-16-64,y-16-64,Floor)
instance_create(x-16-64,y-16+32,Floor)
instance_create(x-16-64,y-16+64,Floor)

instance_create(x-16+64,y-16,Floor)
instance_create(x-16+64,y-16-32,Floor)
instance_create(x-16+64,y-16-64,Floor)
instance_create(x-16+64,y-16+32,Floor)
instance_create(x-16+64,y-16+64,Floor)


instance_create(x-16,y-16+64,Floor)
instance_create(x-16-32,y-16+64,Floor)
instance_create(x-16+32,y-16+64,Floor)


instance_create(x-16,y-16-64,Floor)
instance_create(x-16-32,y-16-64,Floor)
instance_create(x-16+32,y-16-64,Floor)



instance_create(x-16,y-16-32,Floor)
instance_create(x-16,y-16+32,Floor)
instance_create(x-16-32,y-16,Floor)
instance_create(x-16+32,y-16,Floor)

y -= 8

