/// @description Deal Damage
if other.team != team and other.my_health > 0
{
	var actualDmg =	scrCalculateFinalDamage(dmg);
	if other.my_health > actualDmg
	{
		instance_destroy();
		dmg += dmgAdd;
	}
	with other
	{
		if sprite_index!= spr_hurt {
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}

}