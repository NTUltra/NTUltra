if other.team != team && !dealtDamage
{
	if (!array_contains(hitEntities,other.id))
	{
		var actualDmg = scrCalculateFinalDamage(dmg);
		var pierceDmg = scrGetBoltPierceDamage(actualDmg);
		hitEntities[array_length(hitEntities)] = other.id;
		if other.my_health >= pierceDmg
		{
			dealtDamage = true;
			snd_play(sndGrenadeStickWall)
			speed = 0
			x = other.x+offx
			y = other.y+offy
			stickTarget = other;
			with other
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
			    DealDamage(other.dmg);
			    sprite_index = spr_hurt
			    image_index = 0
			    motion_add(other.direction,3)
			}
			if alarm[0]>hitTime
			{
				alarm[0] = hitTime;
				alarm[1] = hitTime * 0.5;
			}
		}
		else
		{
			with other
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
			    DealDamage(other.dmg);
			    sprite_index = spr_hurt
			    image_index = 0
			    motion_add(other.direction,3)
			}	
		}
	}
}