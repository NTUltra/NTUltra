if other.team != team and other.my_health > 0
{
	ammo=0;
	if other.sprite_index != other.spr_hurt
	{
		with other
		{
			raddrop+=other.rad;
			with HorrorBeam
				rad = 0;
			DealDamage(clamp(floor(other.charge*0.25),3,5));
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,2+other.charge)
			scrForcePosition60fps();
			if speed > maxSpeed + 3
				speed = maxSpeed + 3;
			snd_play(snd_hurt, hurt_pitch_variation)
			if object_index == ProtoStatue
			{
				rad += 1;
				snd_play(sndStatueXP);
			}
		}

		if bskin=1
		{
		with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHitB;
		}
		else if bskin=2
		{
		with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHitC;
		}
		else if bskin==3
		{
		with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHitD;
		}
		else
		{
		with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHit;
		}

	}
	else
	{
		with other
		{
			scrIframeSkipper(0.05);
		}
	}
}

