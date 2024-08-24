/// @description Damage
if team != other.team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			DealDamage(other.dmg,true);
			with other
			{
				speed *= 0.999;
			}
		}
	}
}