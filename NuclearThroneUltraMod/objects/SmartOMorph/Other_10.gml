/// @description Damage
if !dealtDamage
{
	var db = dmgBoost
	with instance_create(targetX,targetY,AnimDestroyBloom)
	{
		if db == 0
			sprite_index = sprPlutoHitSmall;
		else
			sprite_index = sprPlutoHit;
		image_angle = other.direction;
		if db > 2
		{
			image_xscale += db*0.125;
			image_yscale = image_xscale;
		}
	}
	with instance_create(targetX,targetY,Morph)
	{
		snd_play(sndMorphStop,0.1);
	}
	BackCont.shake += 1;
	with myTarget
	{
		if team != 2
		{
			DealDamage(other.dmg + other.dmgBoost,false,true,false);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,other.dmg);
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	dealtDamage = true;
}