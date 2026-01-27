if other.team != team
{
	var actualDmg =	scrCalculateFinalDamage(pierceDamage); 
	if other.my_health > actualDmg
	{
		instance_destroy();
		with other
		{
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
		}
	}
	else if alarm[3] < 1
	{
		with other
		{
			DealDamage(other.pierceDamage);
			sprite_index = spr_hurt
			image_index = 0
		}
		alarm[3] = 5;
	}
}

