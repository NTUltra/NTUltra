/// @description Damage
if team != other.team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			if UberCont.normalGameSpeed == 60
				DealDamage(other.dmg * 0.5,true);
			else
				DealDamage(other.dmg,true);
		}
	}
	speed *= 0.999;
	
}