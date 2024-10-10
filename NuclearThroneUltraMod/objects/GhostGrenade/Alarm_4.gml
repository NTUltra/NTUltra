/// @description About to esplode
snd_play(sndGhostBossExplosionAttack);
myFX = instance_create(x,y,AnimDestroyTop)
with myFX {
	sprite_index = sprGhostAboutToExplodeMedium;
}
repeat(3)
{
	with instance_create(x,y,GhostEffect)
	{
		motion_add(random(360),1 + random(2));
	}
}