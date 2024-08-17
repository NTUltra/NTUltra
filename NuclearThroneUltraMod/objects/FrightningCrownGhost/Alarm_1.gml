/// @description Lifetime
if lifeTime > 0
{
	alarm[1] = lifeTime;
	with instance_create(x,y,JumpDust)
	{
		sprite_index = sprSmoke;	
	}
	lifeTime -= 1;
}
else
{
	canExplode = false;
	instance_destroy();
}