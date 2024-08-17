/// @description Additional Explosion
with instance_create(x+choose(random_range(24,32),random_range(-24,-32)),
y+choose(random_range(24,32),random_range(-24,-32)),
SmallGhostExplosion)
{
	dmg = max(1,other.dmg * 0.25);
	alarm[2] = 0;
}