ammo -= 1
if ammo > 0
{
	with instance_create(x,y,HeavyFlame)
	{
		speed = 2;
		direction = other.direction;
		motion_add(random(360),2+random(2))
		team = other.team;
		scrCopyWeaponMod(other);
	}
}
else
{
	instance_destroy();	
}
alarm[0] = time;