/// @description Additional Explosion
with instance_create(x+choose(random_range(12,24),random_range(-12,-18)),
y+choose(random_range(12,18),random_range(-12,-18)),
VerySmallGhostExplosion)
{
	dmg = max(1,other.dmg * 0.25);
	alarm[2] = 0;
}