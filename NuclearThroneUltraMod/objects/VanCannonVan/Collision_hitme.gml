/// @description Damage
if team != other.team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			DealDamage(other.dmg);
		}
	}
	speed *= 0.999;
	
}