if canDealDamage > 0 && other.team != team and other.my_health > 0
{
	var dealtDamage = false;
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				hitBy = other.sprite_index;
				DealDamage(2)
				sprite_index = spr_hurt
				image_index = 0
				Sleep(20);
				motion_add(other.direction,6);
				dealtDamage = true;
			}
		}
		else
		{
			if sprite_index != spr_hurt
				snd_play(snd_hurt, hurt_pitch_variation,true)
			if team == 0//Hit prop
			{
				if sprite_index != spr_hurt
				{
					DealDamage(max(floor(other.dmg * 0.25),1));
					sprite_index = spr_hurt
					image_index = 0
				}
			}
			else if other.canDealDamage > 0
			{
				sprite_index = spr_hurt
				image_index = 0
				if other.canDealDamage == 1
				{
					if mySize < 8
						walk = 0;
					DealDamage(other.dmg);
					motion_add(other.direction,6)
					var duration = 30;
					/*
					if instance_exists(myConfusion)
					{
						if alarm[1] > 1 && alarm[1] < 20 && alarm[11] < 20
						{
							var mydur = duration * 0.25;
							with myConfusion
							{
								alarm[0] += mydur;
								image_speed = 0.4;
								image_index = 0;
							}
							alarm[11] += mydur
							alarm[1] += mydur;
						}
					}
					else
					{**/
						if my_health > 0 && alarm[1] > 0 && alarm[11] < duration
						{
							alarm[11] += duration
							alarm[1] += duration;
							myConfusion = instance_create(x,y-max(sprite_height*0.75,8),HumphryConfuse)
							with myConfusion {
								myEnemy = other.id;
								image_xscale = choose(1,-1);
								image_speed = 0.4;
								alarm[0] = duration;
							}
						}
					//}
				}
				else
				{
					DealDamage(max(floor(other.dmg * 0.25),1));	
					motion_add(other.direction,2);
				}
				dealtDamage = true;
			}
		}
	}
	if canDealDamage == 1 && dealtDamage
	{
		scrSplashDamage(dmg,24,false);
		BackCont.shake += 6;
		snd_play(sndMetalPipeHit,0.02);
		event_user(1);
	}
}



