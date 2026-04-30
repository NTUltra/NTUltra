/// @description Critical hit
var msk = mask_index;
mask_index = mskRapierSlashTip;
with hitEntities[array_length(hitEntities) - 1]
{
	if place_meeting(x,y,other.id)
	{
		DealDamage(other.dmg * 0.5)
	}
}
mask_index = msk;