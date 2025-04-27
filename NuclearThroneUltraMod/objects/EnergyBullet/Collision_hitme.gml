/// @description Damage
if other.team != team and other.my_health > 0
{
	instance_destroy()
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				hitBy = other.sprite_index;
				DealDamage(5)
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,6)
			}
		}
		else
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			if instance_exists(Player){
			if Player.ultra_got[28]//roids ultra d
			{other.dmg += 2;}}
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
			scrForcePosition60fps();
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		}
	}
	scrRecycleGland(cost,radCost);
}



