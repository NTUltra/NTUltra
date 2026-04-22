/// @description myGuy
event_inherited();

if myGuy != noone && instance_exists(myGuy)
{
	with myGuy
	{
		if sprite_index == spr_hurt
		{
			sprite_index = spr_idle;
			BackCont.shake *= 0.5;
		}
		my_health = max(1,prevhealth);
	}
	if myGuy.x < x
		right = -1
    else if myGuy.x > x
		right = 1
}