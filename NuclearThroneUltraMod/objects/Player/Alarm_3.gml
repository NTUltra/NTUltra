/// @description immunity
//My health wont change for a while
my_health=round(my_health);
if myShield > -1 && instance_exists(myShield)
{
	with myShield
	{
		instance_destroy();
	}
	alarm[3] += 2;
}
snd_hurt = snd_hurt_actual;