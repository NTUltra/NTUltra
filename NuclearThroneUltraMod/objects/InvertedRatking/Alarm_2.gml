if ammo > 0
{
spawns += 1
ammo -= 1
alarm[2] = 4
sprite_index = spr_fire
	with instance_create(x,y,InvertedFastRat)
	{
		motion_add(other.gunangle+random(40)-20,3+random(2))
		if instance_exists(Player) && Player.skill_got[29] {
			alarm[1] = 60
			scrGiveSnooze();
			walk = 1 + irandom(2);
			speed = 1;
		}
	}
}
else
{
sprite_index = spr_idle
alarm[1] = 20+random(10)

if spawns > 12 and random(4) < 3
{
spr_idle = sprInvertedRatkingRageWait
spr_walk = sprInvertedRatkingRageAttack
walk = 0
alarm[1] = 20
friction = 0.4;
instance_change(InvertedRatkingRage,false)
}
}

