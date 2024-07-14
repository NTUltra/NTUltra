/// @description AI
sleeping = false;
alarm[1] = 2;
if target != noone && instance_exists(target)
{
	mp_potential_step(target.x,target.y,4,false);
}
else
{
	scrTarget();
	alarm[1] = 6;
}