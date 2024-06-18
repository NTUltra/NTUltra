/// @description Some smoke
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
	with instance_create(x + random_range(4,-4),y-8 + random_range(4,-4),Smoke)
	{
		hspeed *= 2 + min(5,(other.number*0.5));
		vspeed -= 2 - min(5,(other.number*0.5));
	}
	alarm[1] = smokeItteration;
	smokeItteration -= 0.5;
	if smokeItteration < 1
		smokeItteration = 1;
}
else
{
	instance_destroy();	
}