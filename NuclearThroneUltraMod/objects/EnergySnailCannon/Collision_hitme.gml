/// @description Deall the damage
if other.team != team
{
	if (!array_contains(hitEntities,other.id))
	{
		hitEntities[array_length(hitEntities)] = other.id;
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,other.knockback)
		}
	}
	if other.object_index == Player
	{
		other.hitBy = sprite_index;	
	}
}