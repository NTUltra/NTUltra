/// @description Animation handling
if killable && sprite_index == sprLastDeathWait
{
	cycles -= 1;
	if cycles < 0
	{
		my_health = 0;
		prevhealth = 0;
		spr_hurt = spr_timeout;
		spr_dead = spr_timeout;
	}
}