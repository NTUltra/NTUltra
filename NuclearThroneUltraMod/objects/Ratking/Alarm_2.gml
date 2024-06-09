if ammo > 0
{
spawns += 1
ammo -= 1
alarm[2] = 6
sprite_index = spr_fire
	with instance_create(x,y,FastRat)
	{
		motion_add(other.gunangle+random(40)-20,3+random(1))
		if instance_exists(Player) && Player.skill_got[29] {
			alarm[1] = 60
			scrGiveSnooze();
			speed = 1;
		}
	}
}
else
{
sprite_index = spr_idle
alarm[1] = 40+random(10)

if spawns > 12 and random(4) < 3
{
spr_idle = sprRatkingRageWait
spr_walk = sprRatkingRageAttack
walk = 0
alarm[1] = 30
friction = 0.4;
instance_change(RatkingRage,false)
}
}

