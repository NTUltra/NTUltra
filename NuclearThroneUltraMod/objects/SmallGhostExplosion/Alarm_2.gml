/// @description Additional Explosion
with instance_create(x+choose(random_range(16,24),random_range(-16,-24)),
y+random(16)-24,
VerySmallGhostExplosion)
{
	dmg = max(1,other.dmg * 0.25);
	alarm[2] = 0;
}