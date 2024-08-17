/// @description Additional Explosion
with instance_create(x+choose(random_range(32,48),random_range(-32,-48)),
y+choose(random_range(32,48),random_range(-32,-48)),
MediumGhostExplosion)
{
	dmg = max(1,other.dmg * 0.25);
	alarm[2] = 0;
}