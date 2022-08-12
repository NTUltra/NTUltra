/// @description Additional Explosion
with instance_create(x+choose(random_range(10,28),random_range(-10,-28)),
y+random(10)-28,
SmallExplosion)
	alarm[2] = 0;